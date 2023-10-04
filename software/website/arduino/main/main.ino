
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>


const char* ssid = "Alg_Class_01";
const char* password = "80554044";

const char* serverName = "http://192.168.0.180:4000/updatesensor"; // to be updated
unsigned long lastTime = 0;
unsigned long timerDelay = 5;


void setup(){
  
  // initializare serial port
  Serial.begin(115200);

  // status conectare wifi
  WiFi.begin(ssid, password);
  while(WiFi.status() != WL_CONNECTED){
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.print("Connected to WiFi network with IP Address: ");
  Serial.println(WiFi.localIP());

  Serial.println("Timer set to 5 seconds (timerDelay variable), it will take 5 seconds before publishing the first reading.");


}

void loop(){

    if(WiFi.status() == WL_CONNECTED){
      WiFiClient client;
      HTTPClient http;

      http.begin(client, serverName);
      http.addHeader("Content-Type", "application/json");
      int httpResponseCode = http.POST("{\"DE_LA\":\"ESP\",\"PENTRU\":\"NOI\",\"MESAJ\":\"WE GUCCI\"}");

      Serial.print("HTTP Response code:");
      Serial.println(httpResponseCode);
      http.end();
    } else {
      Serial.println("WiFi Disconnected");
    }
}




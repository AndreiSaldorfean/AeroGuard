// SimpleRx - the slave or the receiver
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>


const char* ssid = "Wifi";
const char* password = "parola123";

const char* serverName = "localhost"; // to be updated
unsigned long lastTime = 0;
unsigned long timerDelay = 5;

#define CE_PIN   4
#define CSN_PIN  SS
#define BUFFER_SIZE 500
#define JSON_SIZE 100  

const byte address[5] = {1,2,3};

RF24 radio(CE_PIN, CSN_PIN);

char dataReceived[33]; // this must match dataToSend in the TX
char message[BUFFER_SIZE]; // this must match dataToSend in the TX
char end_[32] = "end_of_message";
char start_[32] = "start_of_message";
bool newData = false;

//===========

void setup() {

    Serial.begin(9600);
    if(!radio.begin()){
      Serial.println("Radio Failed");
      while(1){
        delay(200);
      }
    }
    radio.setPALevel(RF24_PA_LOW);
    radio.setDataRate( RF24_250KBPS );
    radio.openReadingPipe(1, address[0]);
    radio.openReadingPipe(2, address[1]);
    radio.openReadingPipe(3, address[2]);
    radio.startListening();

    WiFi.begin(ssid, password);
    while(WiFi.status() != WL_CONNECTED){
      delay(500);
      Serial.print(".");
    }
}

//=============

void loop() {
    getData();
    if(check(dataReceived,start_)){

      String str="";
      char message[BUFFER_SIZE]="";
      while(1){
          getData();
          str = dataReceived;
          //Serial.println(str);
          if(!check(dataReceived,end_))move(message,dataReceived);
          //Serial.println(message);
          if(check(dataReceived, end_))break;
      }
      Serial.println(message);

      if(WiFi.status() == WL_CONNECTED){
        WiFiClient client;
        HTTPClient http;

        http.begin(client, serverName);
        http.addHeader("Content-Type", "application/json");
        int httpResponseCode = http.POST(message);

        Serial.print("HTTP Response code:");
        Serial.println(httpResponseCode);
        http.end();
      }else {
        Serial.println("WiFi Disconnected");
      }
      str="";
    }
    
}

void getData() {  

    while(!radio.available() ) {
      delay(100);
    }
    radio.read( &dataReceived, sizeof(dataReceived) );
    dataReceived[sizeof(dataReceived)+1]='\0';
    newData = true;
    
}
void showData() {
    if (newData == true) {
        Serial.println(dataReceived);
        newData = false;
    }
}
int size_(char input[32]){
    int i=0;
    while(input[i] != '\0'){
      i++;
    }
    return i;
}
int size_(const char input[32]){
    int i=0;
    while(input[i] != '\0'){
      i++;
    }
    return i;
}
bool check(char message[32],char verification[32]){
  if(size_(message) == 0)return 0;

  for(int i=0;message[i];i++){
      if(message[i]!=verification[i])return false;
  }

  return true;
}
void move(char out[32], const char var[32]){
  int j=0;
  for(int i=size_(out);i<=size_(var) + size_(out);i++){
    out[i] = var[j++];
  }
}
void move(char out[32],char var[32]){
  int j=0;
  for(int i=size_(out);i<=size_(var) + size_(out);i++){
    out[i] = var[j++];
  }
}
void start_move(char out[32], const char var[32]){
  int j=0;
  for(int i=0;i<=size_(var);i++){
    out[i] = var[j++];
  }
}
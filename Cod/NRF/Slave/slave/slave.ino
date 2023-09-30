#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7, 8); // CE, CSN
int address[2] = {1,2};
int n=2;

struct Handshake{
  
};

void setup() {
  Serial.begin(9600);
  if(!radio.begin()){
    Serial.println("Nu mere");
    while(1);  
  }
}



void loop(){
  for(int i=0;i<2;i++){
    radio.openReadingPipe(0, address[i]);
    radio.setPALevel(RF24_PA_MIN);
    radio.startListening();
    while(!radio.available()){  
      delay(20);
    }

    char text[32] = "";
    radio.read(&text, sizeof(text));
    Serial.println(text);
  }
  while(1){
    delay(1000);
  }
}
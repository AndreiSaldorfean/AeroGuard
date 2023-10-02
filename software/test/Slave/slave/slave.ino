// SimpleTx - the master or the transmitter

#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

#define CE_PIN   7
#define CSN_PIN  8

int i=0;
const byte address_dev1 = 1;
const byte address_dev2 = 2;
const byte address_dev3 = 3;
const byte addresses[3] = {address_dev1,address_dev2,address_dev3};

RF24 radio(CE_PIN, CSN_PIN); // Create a Radio

char message1[32] = "43 - Bulevardul Victoriei";
char message2[32] = "32 - Strada Tiglari";
char message3[32] = "13 - Strada Lunga";

unsigned long currentMillis;
unsigned long prevMillis;
unsigned long txIntervalMillis = 1000; // send once per second


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
    radio.setRetries(3,5); // delay, count
}

//====================

void loop() {

  int x=i%3;
   i++;

  send(addresses[x],x+1);
  delay(1000);
}

//====================

void send(byte a,int n) {
  radio.openWritingPipe(a);
  switch(n){
    case 1:{
      if(!radio.write( &message1, sizeof(message1) )){
      Serial.println("Fail");
      }else{
        Serial.println("Acknowledge received");
      }
      Serial.println(message1);
    }break;
    case 2:{
      if(!radio.write( &message2, sizeof(message2) )){
        Serial.println("Fail");

      }else{
        Serial.println("Acknowledge received");
      }
      Serial.println(message2);
    }break;
    case 3:{
        if(!radio.write( &message3, sizeof(message3) )){
        Serial.println("Fail");

      }else{
        Serial.println("Acknowledge received");
      }
      Serial.println(message3);
    }break;
  }
}

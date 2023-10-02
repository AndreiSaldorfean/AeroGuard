// SimpleRx - the slave or the receiver

#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

#define CE_PIN   4
#define CSN_PIN SS

const byte address[5] = {0,1,2,3,4};

RF24 radio(CE_PIN, CSN_PIN);

char dataReceived[32]; // this must match dataToSend in the TX
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
    radio.setDataRate( RF24_250KBPS );
    radio.openReadingPipe(1, address);
    radio.startListening();
}

//=============

void loop() {
    getData();
    showData();
}

//==============

void getData() {
    if ( radio.available() ) {
        radio.read( &dataReceived, sizeof(dataReceived) );
        newData = true;
    }
}

void showData() {
    if (newData == true) {
        Serial.print("Data received ");
        Serial.println(dataReceived);
        newData = false;
    }
}
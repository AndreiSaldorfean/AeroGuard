#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(4,SS); // CE, CSN
int address[2] = {0,1};
int n=2;
char message='1';


void halt(){
  while(1){
    delay(50);
  }
}
int size_(char input[4]){
    int i=0;
    while(input[i] != '\0'){
      i++;
    }
    return i;
}
void to_char(uint8_t val,char out[4]){
    String temp;
    temp = String(val);
    for(int i=0;i<sizeof(temp);i++){
      out[i] = temp[i];
    }
    out[sizeof(temp)] ='\0';
}

void receive(){
  char text[32];
  radio.openReadingPipe(0,address[0]);
  radio.startListening();

  while(!radio.available()){  
    delay(20);
    // Serial.print("Wait ");
    // Serial.print(radio.available());
    // Serial.println();
  }

  radio.read(&text, sizeof(text));
  Serial.println(text);
  radio.stopListening();
  radio.closeReadingPipe(address[0]);
}

void send(char msg){
  radio.openWritingPipe(address[0]);
  radio.write(&msg,sizeof(msg));
  Serial.println(msg);
  delay(1000);
}

struct Handshake{
  private:

  public:
    void init(){

    }
  Handshake(){

  }
  
};

void setup() {
  Serial.begin(9600);
  if(!radio.begin()){
    Serial.println("Nu mere");
    while(1);  
  }
  
  radio.setPALevel(RF24_PA_MIN);
}


void loop(){
  
  receive();
  delay(1000);
  send(message);
  delay(1000);

  halt();
}
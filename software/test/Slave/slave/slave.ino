// SimpleTx - the master or the transmitter

#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

#define BUFFER_SIZE 300
#define JSON_SIZE 50  
#define CE_PIN   7
#define CSN_PIN  8

int i=0;

const byte address_dev1 = 1;
const byte address_dev2 = 2;
const byte address_dev3 = 3;
const byte address_dev4 = 4; // real values
const byte addresses[4] = {address_dev1,address_dev2,address_dev3,address_dev4};

RF24 radio(CE_PIN, CSN_PIN); // Create a Radio

unsigned long txIntervalMillis = 3000; // send once per second

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
  // int x=i%3;
  // i++;
  // send(addresses[x],x+1);
  int a=433;
  int t=18;
  char buffer[BUFFER_SIZE] ="";
  char message[5] ="dog";
  //prepare_packet(t,a,buffer);
  send(1,message);
  delay(txIntervalMillis);

}
void halt(int n){
  while(1){
    delay(n);
  }
}
//====================

void prepare_packet(int temperatura,int concentratie,char buffer[BUFFER_SIZE]){
    start_move(buffer,"{ \"0\":");  
    char json[200] ="";
    prepare_json(json,"2,", "\"Strada Orhideelor\",", "2,","18");
    move(buffer,json);
    move(buffer,",\"1\":");

    json[200] ="";
    prepare_json(json,"3,", "\"Strada Eschil\",", "5,","19");
    move(buffer,json);
    move(buffer,",\"2\":");
    

    json[200] ="";
    prepare_json(json,"1,", "\"Strada Lunga\",", "3,","17");
    move(buffer,json);
    move(buffer,",\"3\":");

    json[200] ="";
    prepare_json(json,"5,", "\"Strada Tiglari\",", "4,","20");
    move(buffer,json);
    move(buffer,",\"4\":");

    //VALORI REALE
    json[200] ="";
    prepare_final_json(json,"0,", "\"Incapere\",", concentratie,temperatura,"\"Terezian\"");
    move(buffer,json);
    move(buffer,"}");
}

//====================

void send(byte a,char message[BUFFER_SIZE]) {
  radio.openWritingPipe(a);
  radio.write(&message,sizeof(message));
  Serial.println(message);
}

void send(byte a,int n) {
  radio.openWritingPipe(a);
  switch(n){
    case 1:{
      char json[200] ="";
      prepare_json(json,"2,", "\"Strada tiglari\",", "3,","20");
      radio.write(&json,sizeof(json));
      Serial.println(json);
    }break;
    case 2:{
      char json[200] = "";
      prepare_json(json,"3,", "\"Strada Lunga\",", "2,","18");
      radio.write(&json,sizeof(json));
      Serial.println(json);
    }break;
    case 3:{
      char json[200] = "";
      prepare_json(json,"1,", "\"Bulevardul Victoriei\",", "1,","19");
      radio.write(&json,sizeof(json));
      Serial.println(json);
    }break;
  }
}

void send_all(){
  send(addresses[0],1);
  delay(200);
  send(addresses[1],2);
  delay(200);
  send(addresses[2],3);
}

int size_(char input[5]){
    int i=0;
    while(input[i] != '\0'){
      i++;
    }
    return i;
}

void to_char(int val,char out[5]){
    String temp;
    temp = String(val);
    for(int i=0;i<sizeof(temp);i++){
      out[i] = temp[i];
    }
    out[sizeof(temp)] ='\0';
}

void to_int(int& out,char input[5]){
    out = 0;
    int s = size_(input);
    for(int i=0;i<s;i++){
        out =out*10;
        out = out +(input[i]-'0');
    }
}

void move(char out[32], const char var[32]){
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

void prepare_json(char json[JSON_SIZE],char id[5],char strada[32],char concentratie[5],char temperatura[5]){
  start_move(json,"{\"Id\":");
  move(json,id);
  move(json,"\"Strada\":");
  move(json,strada);
  move(json,"\"Concentratie\":");
  move(json,concentratie);
  move(json,"\"Temperatura\":");
  move(json,temperatura);
  move(json,"}");
}

void prepare_final_json(char json[JSON_SIZE],char id[5],char strada[32],int concentratie,int temperatura,char zona[20]){

  start_move(json,"{\"Id\":");
  move(json,id);
  move(json,"\"Strada\":");
  move(json,strada);
  move(json,"\"Concentratie\":");
  
  //Transformam concentratia in ex: "20,"
  char concentratie_[5];
  to_char(concentratie, concentratie_);
  //====================================
  move(json,concentratie_);
  move(json,",");

  move(json,"\"Temperatura\":");
  //Transformam temperatura in ex: "18,"
  char temperatura_[5];
  to_char(temperatura, temperatura_);
  //====================================
  move(json,temperatura_);
  move(json,",");

  move(json,"\"Zona\":");
  move(json,zona);
  move(json,"}");
}
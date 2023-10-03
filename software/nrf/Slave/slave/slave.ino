// SimpleTx - the master or the transmitter
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <MQ135.h>
#include <DHT.h>

#define BUFFER_SIZE 500
#define JSON_SIZE 100  
#define CE_PIN   7
#define CSN_PIN  8
#define DHT_PIN  9
#define MQ135_PIN  A0
#define DHTTYPE DHT11  
int i=0;

const byte address_dev1 = 1;
const byte address_dev2 = 2;
const byte address_dev3 = 3;
const byte address_dev4 = 4; // real values
const byte addresses[4] = {address_dev1,address_dev2,address_dev3,address_dev4};

RF24 radio(CE_PIN, CSN_PIN); // Create a Radio
MQ135 mq135_sensor(MQ135_PIN);
DHT dht(DHT_PIN, DHTTYPE);

unsigned long txIntervalMillis = 3000; // send once per second


void setup() {

  Serial.begin(9600);

  if(!radio.begin()){
    Serial.println("Radio Failed");
    while(1){
      delay(200);
    }  
  }
  dht.begin();

  radio.setPALevel(RF24_PA_LOW);
  radio.setDataRate( RF24_250KBPS );
  radio.setRetries(3,5); // delay, count

  //DHT 
  pinMode(DHT_PIN, INPUT);
  //MQ
  pinMode(MQ135_PIN, INPUT);
}

//====================

void loop() {

  // int x=i%3;
  // i++;
  // send(addresses[x],x+1);
  
  char buffer[BUFFER_SIZE] ="";
  float humidity = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float temperature = dht.readTemperature();
  float ppm = mq135_sensor.getCorrectedPPM(temperature, humidity);
  
  prepare_packet((int)temperature,(int)ppm,buffer);

  radio.openWritingPipe(addresses[1]);
  String str = buffer;
  char start_[32] = "start_of_message";
  radio.write(&start_,sizeof(start_));
  Serial.println(start_);
  int n = str.length(),ct=0,j=1,si=0;
  while(str.length()!=0){
      if(ct==32){
          String message = str.substring(0,32);
          char temp[33];
          message.toCharArray(temp,33);
          Serial.println(temp);
          radio.write(&temp,sizeof(temp)+1);
          ct=0;  
          str.remove(0,32);
          delay(1000);
      }
      if(str.length()<32){
          String message = str.substring(0,str.length());
          char temp[32];
          message.toCharArray(temp,32);
          Serial.println(temp);
          radio.write(&temp,sizeof(temp)+1);
          str.remove(0,str.length());
          delay(1000);
      }
      ct++;
    }
  char end_[32] = "end_of_message";
  radio.write(&end_,sizeof(end_));
  Serial.println(end_);
  // radio.write(&buffer,sizeof(buffer));
  // Serial.println(buffer);
  delay(txIntervalMillis);
}
void halt(int n){
  while(1){
    delay(n);
  }
}
//====================

void prepare_packet(int temperatura,int concentratie,char buffer[BUFFER_SIZE]){
    start_move(buffer,"[");  
    char json[200] ="";
    prepare_json(json,"2,", "\"Strada_Orhideelor\",", "2,","18");
    move(buffer,json);
    move(buffer,",");

    json[200] ="";
    prepare_json(json,"3,", "\"Strada_Eschil\",", "5,","19");
    move(buffer,json);
    move(buffer,",");
    

    json[200] ="";
    prepare_json(json,"1,", "\"Strada_Lunga\",", "3,","17");
    move(buffer,json);
    move(buffer,",");

    json[200] ="";
    prepare_json(json,"5,", "\"Strada_Tiglari\",", "4,","20");
    move(buffer,json);
    move(buffer,",");

    //VALORI REALE
    json[200] ="";
    prepare_final_json(json,"0,", "\"Incapere\",", concentratie,temperatura,"\"Terezian\"");
    move(buffer,json);
    move(buffer,"]");
}
//====================

void send(int n,char message[BUFFER_SIZE]) {
  radio.write(&message,sizeof(message));
  Serial.println(message);
}


// void send_all(){
//   send(addresses[0],1);
//   delay(200);
//   send(addresses[1],2);
//   delay(200);
//   send(addresses[2],3);
// }

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
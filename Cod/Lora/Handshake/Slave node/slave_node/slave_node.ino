//SLAVE NODE
//Arduino Leonardo

#include <SX127x.h>
#include <string.h>

SX127x LoRa;

char id[]="Device_1";

void halt(){
  while(1);
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
bool check(char* message,char* verification){
  if(size_(message) == 0)return 0;

  for(int i=0;message[i];i++){
      if(message[i]!=verification[i])return false;
  }

  return true;
}

struct Handshake{
  public:
    bool send_ack(char* message){
      uint8_t nBytes = size_(message);
      uint8_t counter = 0;
      // Transmit message and counter
      // write() method must be placed between beginPacket() and endPacket()
      LoRa.beginPacket();
      LoRa.write(message,nBytes);
      LoRa.write(counter);
      LoRa.endPacket();

      // Print message and counter in serial
      Serial.write(message,nBytes);
      Serial.print("  ");
      Serial.println(counter++);

      // Wait until modulation process for transmitting packet finish
      LoRa.wait();

      // Print transmit time
      Serial.print("Transmit time: ");
      Serial.print(LoRa.transmitTime());
      Serial.println(" ms");
      Serial.println();
      return true;
    }
    bool receive_ack(char* message){

      LoRa.set_rx_mode_single();
      LoRa.request();
      Serial.println("Here");
      // Wait for incoming LoRa packet
      LoRa.wait();
      Serial.println("Here1");
      const uint8_t msgLen = LoRa.available() - 1;
      
      LoRa.read(message, msgLen);
      uint8_t counter = LoRa.read();
     
      // Print received message and counter in serial
      Serial.write(message, msgLen);
      Serial.print("  ");
      Serial.println(counter);

      // Print packet / signal status
      Serial.print("RSSI: ");
      Serial.print(LoRa.packetRssi());
      Serial.print(" dBm | SNR: ");
      Serial.print(LoRa.snr());
      Serial.println(" dB");

      // Show received status in case CRC or header error occur
      uint8_t status = LoRa.status();
      if (status == SX127X_STATUS_CRC_ERR) Serial.println("CRC error");
      else if (status == SX127X_STATUS_HEADER_ERR) Serial.println("Packet header error");
      Serial.println();

      return true;
    
    }
    void send(){
      Serial.print("Nothing yet");
    }
    bool initialize_handshake(){
      char message_buffer[32];
      Serial.println(1);
      receive_ack(message_buffer);
      Serial.println(message_buffer);
      send_ack(message_buffer);
      return true;
    }
    Handshake(){
      Serial.println(1);
      initialize_handshake();
    }
};

void setup() {

  // Begin serial communication
  Serial.begin(38400);

  // Uncomment below to use non default SPI port
  //SPIClass SPI_2(PB15, PB14, PB13);
  //LoRa.setSPI(SPI_2, 16000000);
  // Begin LoRa radio and set NSS, reset, txen, and rxen pin with connected arduino pins
  // IRQ pin not used in this example (set to -1). Set txen and rxen pin to -1 if RF module doesn't have one
  Serial.println("Begin LoRa radio");
  int8_t nssPin = 10, resetPin = -1, irqPin = -1, txenPin = -1, rxenPin = -1;
  if (!LoRa.begin(nssPin, resetPin, irqPin, txenPin, rxenPin)){
    Serial.println("Something wrong, can't begin LoRa radio");
    while(1);
  }

  // Set frequency to 433 Mhz
  Serial.println("Set frequency to 433 Mhz");
  LoRa.setFrequency(433E6);

  // Set TX power, this function will set PA config with optimal setting for requested TX power
  Serial.println("Set TX power to +6 dBm");
  Serial.println("Set RX gain to power saving gain");
  LoRa.setRxGain(SX127X_RX_GAIN_POWER_SAVING, SX127X_RX_GAIN_AUTO); // AGC on, Power saving gain
  LoRa.setTxPower(6 , SX127X_TX_POWER_PA_BOOST);

  // Configure modulation parameter including spreading factor (SF), bandwidth (BW), and coding rate (CR)
  // Transmitter must have same SF and BW setting so receiver can receive LoRa packet
  Serial.println("Set modulation parameters:\n\tSpreading factor = 7\n\tBandwidth = 125 kHz\n\tCoding rate = 4/5");
  LoRa.setSpreadingFactor(7);                                       // LoRa spreading factor: 7
  LoRa.setBandwidth(125000);                                        // Bandwidth: 125 kHz
  LoRa.setCodeRate(5);                                              // Coding rate: 4/5

  // Configure packet parameter including header type, preamble length, payload length, and CRC type
  // The explicit packet includes header contain CR, number of byte, and CRC type
  // Packet with explicit header can't be received by receiver with implicit header mode
  Serial.println("Set packet parameters:\n\tExplicit header type\n\tPreamble length = 12\n\tPayload Length = 15\n\tCRC on");
  LoRa.setHeaderType(SX127X_HEADER_EXPLICIT);                       // Explicit header mode
  LoRa.setPreambleLength(12);                                       // Set preamble length to 12
  LoRa.setPayloadLength(15);                                        // Initialize payloadLength to 15
  LoRa.setCrcEnable(true);                                          // Set CRC enable

  // Set syncronize word
  Serial.println("Set syncronize word to 0x34");
  LoRa.setSyncWord(0x34);

}

void loop() {
  Serial.println(1);
  Handshake hand();
  
  halt();
}

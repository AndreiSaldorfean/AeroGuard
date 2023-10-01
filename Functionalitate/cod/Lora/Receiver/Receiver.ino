#include <SX127x.h>
#include <string.h>

SX127x LoRa;

const uint8_t bufferSize = 32; // Adjust this based on your expected message length
char message[bufferSize];
uint16_t counter = 0;
int val=0;

int size_(char input[4]){
    int i=0;
    while(input[i] != '\0'){
      i++;
    }
    return i;
}

void to_int(int& out,char input[4]){
    out = 0;
    int s = size_(input);
    for(int i=0;i<s;i++){
        out =out*10;
        out = out +(input[i]-'0');
    }
}
void setup() {

  // Begin serial communication
  Serial.begin(38400);
  pinMode(3, OUTPUT);
  //Uncomment below to use non default SPI port
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
  // Set RX gain. RX gain option are power saving gain or boosted gain
  Serial.println("Set RX gain to power saving gain");
  LoRa.setRxGain(SX127X_RX_GAIN_POWER_SAVING, SX127X_RX_GAIN_AUTO); // AGC on, Power saving gain

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
  Serial.println("\n-- LORA RECEIVER --\n");
  LoRa.set_rx_mode_single();
} 

void loop() {
  LoRa.request();
  // Wait for incoming LoRa packet
  LoRa.wait();

  // Put received packet to message and counter variable
  // read() and available() method must be called after request() method

  const uint8_t msgLen = LoRa.available() - 1;
  char message[msgLen];
  LoRa.read(message, msgLen);
  uint8_t counter = LoRa.read();
  to_int(val, message);

  analogWrite(3,val);
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
}

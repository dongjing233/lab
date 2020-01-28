
int r = 2;  
int g = 3;
int b = 4;

void setup() {
  pinMode(r, INPUT);             // Set pin 0 as an input
  pinMode(g, INPUT);             // Set pin 0 as an input
  Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  if (digitalRead(r) == HIGH) {  // If switch is ON,
    Serial.write(1);               // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.write(0);               // send 0 to Processing
  }
  delay(100);                            // Wait 100 milliseconds
  
    if (digitalRead(g) == HIGH) {  // If switch is ON,
    Serial.write(3);               // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.write(2);               // send 0 to Processing
  }
  delay(100);    

      if (digitalRead(b) == HIGH) {  // If switch is ON,
    Serial.write(5);               // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.write(4);               // send 0 to Processing
  }
  delay(100);    
}

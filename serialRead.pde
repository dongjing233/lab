import processing.serial.*;

Serial myPort;  // Create object from Serial class
int co;      // Data received from the serial port
int r,g,b;

void setup() 
{
  size(800, 800);
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  if ( myPort.available() > 0) {  // If data is available,
    co = myPort.read();         // read it and store it in val
  }
  background(255);             // Set background to white
  if (co == 1) {                       // If the serial value is not 0,
    fill(204);                 // set fill to light gray
        r=r+1;
    println(r);
  }
  
  
    if (co == 3) {              // If the serial value is 0,                     // If the serial value is not 0,
        g=g+1;
    println(g);
  }
  
      if (co == 5) {              // If the serial value is 0,                     // If the serial value is not 0,
        b=b+1;
    println(b);
  }
  
  
  fill(r,g,b);
  rect(0, 0, 800, 800);
}

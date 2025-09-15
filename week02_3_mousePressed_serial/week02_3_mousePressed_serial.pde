import processing.serial.*; //用serual來連接Arduino
Serial myPort;
void mousePressed(){
  myPort.write(' ');
  }
  void setup(){
  size(400,400);
  myPort=new Serial(this,"COM4",9600);
  }
  void draw(){
    if(mousePressed) 
    else background
  }
}
void draw(){
  if(mousePressed) background(#FF
  else background(#00FF00)
}

import processing.serial.*; //用serual來連接Arduino
Serial myPort;
void mousePressed() {
  myPort.write(' ');
}
void setup() {
  size(400, 400);
  myPort=new Serial(this, "COM4", 9600);//9600表示傳輸速度
}
void draw() {
  if (mousePressed) background(#FF0000);
  else background(#00FF00);
}

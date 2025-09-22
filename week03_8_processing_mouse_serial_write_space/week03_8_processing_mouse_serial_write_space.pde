import processing.serial.*;
Serial myPort; //myPort是自己發明的變數
void setup(){
  size(400,400);
  myPort=new Serial(this,"COM3",9600);
}
void mousePressed(){
  if(mouseButton==LEFT) myPort.write('b'); //按左鍵傳 b 
  if(mouseButton==RIGHT) myPort.write(' ');//按右鍵傳空的資料
}
void draw(){ 
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}

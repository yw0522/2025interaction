import processing.serial.*;
Serial myPort; //myPort是自己發明的變數
void setup(){
  size(400,400);
  myPort=new Serial(this,"COM3",9600);
}
void mousePressed(){
  myPort.write('b'); //先隨便打，只是要傳一個資料
}
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}

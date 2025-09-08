void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  //if(mousePressed && x<mouseX && y< mouseY){; 鼠標在方塊右下角,需更多條件
  if(mousePressed && x<mouseX && mouseX< x+100 && y<mouseY && mouseY< y+50){ //鼠標在方塊內時才能拖曳
    x += mouseX-pmouseX;
    y += mouseY-pmouseY;
  }
  rect(x,y,100,50);
}

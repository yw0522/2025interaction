void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  if(mousePressed){
    x+=mouseX-pmouseX;
    y+=mouseY-pmouseY;
  }
  rect(x,y,100,50);
}

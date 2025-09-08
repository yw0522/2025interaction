void setup(){
  size(500,500);
}
int x=200,y=250;//設定座標
void draw(){
  background(#FFFFAA);//黃色背景
  rect(x,y,100,50);//移動的方塊
  if(keyPressed && keyCode==LEFT) x-=3;
  if(keyPressed && keyCode==RIGHT) x+=3;
}

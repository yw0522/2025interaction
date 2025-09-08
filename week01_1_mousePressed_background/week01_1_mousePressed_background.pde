void setup(){ //設定一個500*500的視窗
  size(500,500);
}
void draw(){ //視窗中的顏色
  if(mousePressed)background(#FF0000);//按住變紅色
  else background(#00FF00);//原本是綠色
}

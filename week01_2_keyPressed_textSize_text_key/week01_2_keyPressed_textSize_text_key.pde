void setup(){
  size(500,500);
}
void draw(){
  if(keyPressed){
    background(#FF0000);
    textSize(80);
    text(""+key,100,100);//(""代表你想打的字 +鍵盤按下的鍵,顯示在x=100,y=100的位置)
  }
}

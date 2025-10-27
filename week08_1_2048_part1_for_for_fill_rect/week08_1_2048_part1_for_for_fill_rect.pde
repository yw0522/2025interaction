void setup(){
  size(410,410);
}
void draw(){
  background(188,174,162);
  for(int i=0;i<4;i++){   //y座標
    for(int j=0;j<4;j++){ //x座標
      fill(206,194,185);  //填滿格子顏色
      noStroke(); //沒有外框線
      rect(j*100+10,i*100+10,90,90,5);//矩形間有 100 像素的間隔，+10讓矩形稍微偏移
      }
   }
}

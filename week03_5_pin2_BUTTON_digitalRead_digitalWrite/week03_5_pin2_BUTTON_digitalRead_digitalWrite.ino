void setup() {
  pinMode(2,INPUT_PULLUP);//把pin 2 按鈕一直拉高
  for(int i=3;i<=13;i++){ //pin 3到pin 13 
    pinMode(i,OUTPUT);  // 都會亮
  }
}
int now=3;
void loop() {
  if(digitalRead(2)==LOW){ //前面已經拉高了 所以LOW時 表示按下按鈕
    now=now+1; 
    if(now>13) now=3; //13亮過 回到3

    for(int i=3;i<=13;i++){
      digitalWrite(i,LOW); //全部不亮
    }
    
    digitalWrite(now,HIGH); //指定這格亮
    delay(500); //要過一段時間再按才會亮下一格
  }
}

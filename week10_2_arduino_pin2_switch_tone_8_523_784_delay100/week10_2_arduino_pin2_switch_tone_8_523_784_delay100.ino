void setup() {
  pinMode(2,INPUT_PULLUP);//2號腳拉高
  pinMode(8,OUTPUT); //開啟8號腳才能發出聲音
}

void loop() {
  if(digitalRead(2)==LOW){ //如果2號腳訊號是LOW(按下搖桿時)
    tone(8,523,100); //Do
    delay(100);
    tone(8,784,100); //So
    delay(100);
  }
}

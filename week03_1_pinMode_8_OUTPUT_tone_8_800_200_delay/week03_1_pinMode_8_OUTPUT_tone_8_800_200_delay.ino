void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT); //第8個角負責發聲 改掉就沒有聲音
  tone(8,800,200); //(第8個腳,音高,持續時間)
  delay(1000);//等待1秒 1000ms=1s
  tone(8,800,200); 
  delay(1000);
  tone(8,800,200); 
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:

}

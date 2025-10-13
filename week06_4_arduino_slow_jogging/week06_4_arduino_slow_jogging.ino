void setup() {
  // put your setup code here, to run once:
  pinMode(8,OPTUTE)
}

void loop() {
  tone(8,700,60); //自訂 (pin角,音高,持續發聲多久)
  delay(333); //等待時間，內涵前面的發聲持續時間
  tone(8,320,100);
  delay(333);
} //每秒叫3次，因為delay都是333，也就是三分之一秒




void setup() {
  pinMode(3,OUTPUT);//讓3號腳會亮
  pinMode(5,OUTPUT);//讓5號腳會亮
  pinMode(7,OUTPUT);//7讓號腳會亮
  pinMode(8,OUTPUT);//讓8號腳負責發聲 每次發聲也會亮
}

void loop() {
  digitalWrite(3,HIGH);//3號腳亮
  tone(8,523,200);//8號發出Do 也會亮
  delay(1000);
  digitalWrite(3,LOW);//3號腳暗

  digitalWrite(5,HIGH);//5號腳亮
  tone(8,659,200);//8號發出Mi 也會亮
  delay(1000);
  digitalWrite(5,LOW);//5號腳暗

  digitalWrite(7,HIGH); //7號腳亮
  tone(8,784,100);//8號發出So 也會亮
  delay(1000);
  digitalWrite(7,LOW); //7號腳暗
}

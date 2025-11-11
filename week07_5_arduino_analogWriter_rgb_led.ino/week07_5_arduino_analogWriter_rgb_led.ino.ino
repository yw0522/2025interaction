void setup() {
  pinMode(3,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(5,OUTPUT);
}

int a=0;
void loop() { 
  analogWrite(6,0); //pin 6暗
  analogWrite(3,255); //紅色亮
  delay(500);
  analogWrite(3,0); //pin 3暗
  analogWrite(5,255);//綠色亮
  delay(500);
  analogWrite(5,0);//pin 5暗
  analogWrite(6,255);//藍色亮
}
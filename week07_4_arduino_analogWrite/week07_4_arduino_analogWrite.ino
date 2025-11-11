void setup() {
  pinMode(11,OUTPUT);
}

int a=0;
void loop() { 
  analogWrite(11,a); //a為輛的程度(0~255)
  a=(a+1)%256; // 每次增加一點(變亮一點)
  delay(10);
}
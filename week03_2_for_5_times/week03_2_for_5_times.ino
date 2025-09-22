void setup() {
  pinMode(8,OUTPUT);
  for(int i=0;i<5;i++){ //重複五次
    tone(8,800,200);
    delay(1000);
  }

}

void loop() {
  // put your main code here, to run repeatedly:

}

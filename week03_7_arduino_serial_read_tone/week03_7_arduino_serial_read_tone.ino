void setup() {
  Serial.begin(9600);//設定USB傳輸速度
  pinMode(8,OUTPUT);
}

void serialEvent(){
  while(Serial.available()){ //如果有資料從processing傳來
    Serial.read(); //讀進來
    tone(8,800,200); //發出聲音
  }
}

void loop() {
  // put your main code here, to run repeatedly:

}
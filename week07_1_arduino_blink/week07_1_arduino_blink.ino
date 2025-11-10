void setup() {
  pinMode(13, OUTPUT);  // 開啟13號腳，讓 pin 13 能送出資料
}

void loop() {
  digitalWrite(13, HIGH);  // 亮
  delay(500);              //0.5秒
  digitalWrite(13, LOW);   // 暗
  delay(500);              //0.5秒
}
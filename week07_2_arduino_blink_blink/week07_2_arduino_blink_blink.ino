void setup() {
  pinMode(12, OUTPUT);  // 開啟12號腳，讓 pin 12 能送出資料
  pinMode(13, OUTPUT);
}

void loop() {
  digitalWrite(12, LOW);   // 12暗
  digitalWrite(13, HIGH);  // 13亮 
  delay(500);              // 維持0.5秒
  digitalWrite(13, LOW);   // 13暗
  digitalWrite(12, HIGH);  // 12亮
  delay(500);              // 維持0.5秒
}
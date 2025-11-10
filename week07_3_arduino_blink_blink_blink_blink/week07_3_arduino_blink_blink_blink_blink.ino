void setup() {
  pinMode(10, OUTPUT);  // 會用到的pin腳都開啟
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);  
  pinMode(13, OUTPUT);  
}

void loop() {
  for(int i=10; i<=13; i++) { //10到13號腳的LED
    digitalWrite(13, LOW);  // 13都先關，後面還是會開
    digitalWrite(i-1, LOW); // 過了就關
    digitalWrite(i, HIGH);  // 輪到的開
    delay(500);
  }
}
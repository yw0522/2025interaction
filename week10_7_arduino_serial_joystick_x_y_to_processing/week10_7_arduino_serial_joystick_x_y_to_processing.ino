void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT);
}

void loop() {
  delay(30); // 慢一點 Processing 才來得及收
  int x = analogRead(A2); // 搖桿的 x 接 A2
  int y = analogRead(A3); // 搖桿的 y 接 A3
  Serial.write(x/4); // 把 0-1023 除4 讓數值落在 0-255
  Serial.write(y/4);

  if (x > 900) tone(8, 784, 100); //搖桿上下左右各自發出不同聲音
  if (x < 100) tone(8, 523, 100);
  if (y > 900) tone(8, 659, 100);
  if (y < 100) tone(8, 500, 100); 
}
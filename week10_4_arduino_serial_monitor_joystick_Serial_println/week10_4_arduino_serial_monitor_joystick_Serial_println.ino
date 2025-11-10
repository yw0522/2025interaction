void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT);
}

void loop() {
  delay(100); //停頓一下才看得到
  int now = analogRead(A3); //變數now = pin A3的類比訊號(0到255)
    Serial.println(now);
  if (now > 800) { // 搖桿往上
    tone(8, 523, 100); //Do
    delay(100);
    tone(8, 784, 100); //So
    delay(200);
  } else if (now < 200) { // 搖桿往下
    tone(8, 784, 100); //So
    delay(100);
    tone(8, 523, 100); //Do
    delay(200);
  }
}
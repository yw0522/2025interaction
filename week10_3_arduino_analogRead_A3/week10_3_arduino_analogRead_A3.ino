// 把Joystick的Y的線,經由麵包板暫接,接到MakerUNO另一邊的A3
// (不能接其他的,因為要接有 ~ 小歸符號的,代表 analog 訊號)
void setup() {
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT);
}

void loop() {
  int now = analogRead(A3); //變數now = pin A3的類比訊號(0到255)
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
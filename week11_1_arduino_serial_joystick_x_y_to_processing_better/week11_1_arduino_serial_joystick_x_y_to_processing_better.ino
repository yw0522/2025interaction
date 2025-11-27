void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT);
}
int count = 0, totalX = 0, totalY = 0; 
int x0 = 512, y0 = 512;

void loop() {
  delay(30); 
  int x = analogRead(A2); // 把搖桿的X接在A2
  int y = analogRead(A3); // 把搖桿的Y接在A3
  if(count<20) { //平均值很重要，統計20筆資料的平均值 
    totalX += x; //加總X值
    totalY += y; //加總Y值
    count++;  //每讀到一筆資料就++ 取20筆
    x0 = totalX / count; // x0是 X座標的平均值
    y0 = totalY / count; //count當分母 total當分子 算出平均
  }

  //Serial.write(x/4); // 把 0-1023 變成 0-255
  //Serial.write(y/4);

  if ( abs(x-x0) < 25 ) x = 128; //如果X座標數值差異不大，中間值就是128
  else x = (x-x0)/4.4 + 128;     //不然就先減掉中間值(算出做標和平均值的距離)，再除4.4縮小範圍(原先的值落在0~1023)，最後加128
  if ( abs(y-y0) < 25 ) y = 128; 
  else y = (y-y0)/4.4 + 128; // 有大的數值,就減掉中間值,再除4,再加128
  Serial.write(x); // 送出x值
  Serial.write(y); // 送出y值
}
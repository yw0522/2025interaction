PImage imgCoin; 
float userX = 150, userY = 450; // 我們要控制小人
float [] x = new float[10]; // 硬幣 X 座標陣列
float [] y = new float[10]; // 硬幣 Y 座標陣列
int score = 0; // 分數

void setup() {
  size(300, 500); 
  imgCoin = loadImage("coin.png");
  for(int i = 0; i < 10; i++){
    x[i] = random(300-100); 
    y[i] = -100 - random(1000); 
  }
}
void draw() {
  background(255); 
  for(int i = 0; i < 10; i++){
    image(imgCoin, x[i], y[i], 100, 100);
    y[i] += 3; 
    // dist(x1, y1, x2, y2) 計算兩點距離
    // 判斷硬幣中心 (x[i]+50, y[i]+50) 與小人中心 (userX, userY) 的距離是否小於某個值50
    if(dist(userX, userY, x[i]+50, y[i]+50) < 50 ) { 
      score += 100; 
      x[i] = random(300-100);   
      y[i] = -100 - random(200); // 金幣到上面 重生
    }
    if(y[i] > 500) {   // 如果硬幣掉落到畫布底部 (y 座標 > 500)
      x[i] = random(300-100); 
      y[i] = -100 - random(200); 
    }
  }
  // 繪製小人 (紅色的圓形)
  fill(255, 0, 0); // 紅色
  ellipse(userX, userY, 50, 10); // 繪製一個寬 50、高 10 的橢圓作為小人
  if(keyPressed && keyCode == LEFT) userX--;
  // 檢查按鍵是否被按下，並且是 RIGHT 鍵
  if(keyPressed && keyCode == RIGHT) userX++; // X 座標加 1，往右移動
  fill(0); // 黑色
  textSize(24); // 設定文字大小
  text("Score: " + score, 200, 50); // 顯示分數在 (200, 50)
}

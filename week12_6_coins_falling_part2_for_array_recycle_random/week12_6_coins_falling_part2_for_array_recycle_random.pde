PImage imgCoin; // 把圖檔，拉進程式裡
// 宣告兩個浮點數陣列，分別儲存 10 個硬幣的 X 和 Y 座標
float [] x = new float[10];
float [] y = new float[10]; 

void setup() {
  size(300, 500); // 設定畫布大小
  imgCoin = loadImage("coin.png"); // 載入硬幣圖片
  
  // 初始化 10 個硬幣的位置
  for(int i = 0; i < 10; i++){
    // x[i] 隨機落在 0 到 200 之間 (300-100)
    x[i] = random(300-100); 
    // y[i] 隨機落在 -100 到 -1100 之間，確保硬幣從畫面外上方開始掉落
    y[i] = -100 - random(1000); 
  }
}

void draw() {
  background(255); // 設定背景為白色
  
  // 透過 for 迴圈處理 10 個硬幣的邏輯
  for(int i = 0; i < 10; i++){
    
    // 1. 繪製硬幣
    // 在 (x[i], y[i]) 繪製第 i 個硬幣，大小為 100x100
    image(imgCoin, x[i], y[i], 100, 100);
    
    // 2. 往下掉落
    y[i] += 3; // 第 i 個硬幣的 y 座標增加 3
    
    // 3. 回收再利用 (Re-cycle)
    // 如果硬幣掉落到畫布底部 (y 座標 > 500)
    if(y[i] > 500) {
      // 重新設定 X 座標
      x[i] = random(300-100); 
      // 重新設定 Y 座標，讓它從畫面上方隨機位置出現 (-100 到 -300 之間)
      y[i] = -100 - random(200); 
    }
  }
}

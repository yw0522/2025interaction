PImage imgCoin; // 把圖檔拉進程式裡
float x = 0, y = 0; // 硬幣的起始位置

void setup() {
  size(300, 500);
  imgCoin = loadImage("coin.png");
}

void draw() {
  background(255); 
  // image(imgCoin, mouseX, mouseY, 100, 100); // 硬幣會跟著滑鼠移動
  image(imgCoin, x, y, 100, 100);  // 在 (x, y) 座標繪製 100x100的圖片
  y += 3; // 每次畫圖時，y 座標增加 3，使硬幣往下掉落
  // 可選：增加邊界判斷，讓硬幣掉出畫面後重設位置
  if (y > height) {
    y = -100; // 回到畫面最上方
    x = random(width - 100); // 隨機水平位置
  }
}

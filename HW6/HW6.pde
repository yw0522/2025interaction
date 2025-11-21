PImage img;
final int MAX_IMAGES = 10;
float[] imageX = new float[MAX_IMAGES];
float[] imageY = new float[MAX_IMAGES];

int imageCount = 0; 

void setup() {
  size(1000, 800);
  img = loadImage("good.jpg");
  imageMode(CENTER); 
}

void draw() {

  background(0, 3, 50); 

  for (int i = 0; i < imageCount; i++) {
    image(img, imageX[i], imageY[i]);
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {

    for (int i = MAX_IMAGES - 1; i > 0; i--) {
      imageX[i] = imageX[i - 1];
      imageY[i] = imageY[i - 1];
    }

    imageX[0] = mouseX;
    imageY[0] = mouseY;

    if (imageCount < MAX_IMAGES) {
      imageCount++;
    }
  }
}

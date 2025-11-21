PImage img;

int[] x = { 0, 200, 400, 600, 600, 600, 600, 400, 200, 0, 0 ,0 }; // x
int[] y = { 0, 0, 0, 0, 200, 400, 600, 600, 600, 600, 400, 200 }; // y
int i = 0;


final int GRID_SIZE = 200; 

void setup(){
  size(800, 800);
  frameRate(3);
  img = loadImage("capybara.jpg");
  background(255);
  noStroke();
  imageMode(CORNER); 
}

void draw(){
  background(255); 
  
  image(img, x[i], y[i], GRID_SIZE, GRID_SIZE);
  
  i = i + 1;
 
  if(i == x.length) {
    i = 0;
  }
}

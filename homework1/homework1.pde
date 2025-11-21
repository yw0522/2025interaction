PImage img;
int i;

void setup()
{
size(1000, 200);
i=0;
img = loadImage("capybara.jpg");
frameRate(20);
}

void draw()
{
background(255);
image(img, i, 0,200,200);
i = i+8;
}

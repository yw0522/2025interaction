PImage img_mouse;
PImage img_cat;

int cat_x;
int cat_y;
int mouse_x;
int mouse_y;

int mouse_life;

void setup() 
{
    size(1400, 800);
    img_cat = loadImage("man.png");
    img_mouse = loadImage("car1.png");

    cat_x = int(random(800));
    cat_y = int(random(600));
    mouse_x = int(random(800));
    mouse_y = int(random(600));

    mouse_life = 1;

    frameRate(40);
}

void draw() {
    background(255);

    if (keyPressed == true && key == 'w') 
    {
        if (cat_y >= 0)
            cat_y -= 5; 
    }

    if (keyPressed == true && key == 'd') 
    {
        if (cat_x <= 670) 
            cat_x += 5;
    }
    
    if (keyPressed == true && key == 's') {
        if (cat_x <= 700)
            cat_y += 5;
    }
    
    if (keyPressed == true && key == 'a') {
        if (cat_x >= 0)
            cat_x -= 5;
    }
    
    if (cat_x >= mouse_x && cat_x <= mouse_x + 50 && cat_y >= mouse_y && cat_y <= mouse_y + 50)
       mouse_life = 0;
        
  println(cat_x + "== " + cat_x + " == " + mouse_x + " == " + mouse_y);
  
  image(img_mouse, mouse_x, mouse_y); 
  image(img_cat, cat_x, cat_y);

  if (mouse_life == 0) 
  {
      textSize(50);
      fill(255, 18, 79);
      text("I Throw it!", 150, 350);
  }
}

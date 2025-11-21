PImage img;
int i = 300; // X
int j = 300; // Y

void setup() {
    size(800, 800);
    img = loadImage("car.png");
    frameRate(20);
}

void draw() {
    background(255);
    image(img, i, j, 200, 200);
    if ((keyPressed == true) && (key == 'd')) {
        i = (i + 20) % 1000;
    }

    if ((keyPressed == true) && (key == 'a')) {
        i = (i - 20) % 1000;
        if (i < 0) {
            i = 1000;
        }
    }
    
    if ((keyPressed == true) && (key == 'w')) {
        j = (j - 20);
        if (j < 0) {
            j = 0;
        }
    }

    if ((keyPressed == true) && (key == 's')) {
        j = (j + 20);
        if (j > 800 - 200) {
            j = 800 - 200;
        }
    }
    
}

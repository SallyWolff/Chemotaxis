 Walker[] wArray = new Walker[20];

void setup() {
  size(300, 300);
  frameRate(1000);
  for ( int i=0; i<20; i++) { 
    wArray[i] = new Walker();
  }
}

void draw() {

  background(151);
  stroke(0);
  for ( int i=0; i<20; i++) { 
    wArray[i].move();
    wArray[i].show();
  }
}

//I dont know how to do multiple tabs on github but after this is the second tab named Walker

class Walker {
  float x;
  float y;
  int c;
  Walker() {
    x = (int)(Math.random()*width);
    y = (int)(Math.random()*height);
    c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  void show() {
    stroke(0);
    fill(c);
    ellipse(x, y, 30, 30);
  }

  void move() {
    x += (int)(Math.random()*3)-1;
    y += (int)(Math.random()*3)-1;
    if (x < 0) {
      x = width;
    }
    if (x > width) {
      x = 0;
    }

    if (y < 0) {
      y = height;
    }
    if (y > height) {
      y = 0;
    }
    if (mousePressed) {
      if (mouseX > x) 
        x = x + (int)(Math.random()*5)-1; 
      else
        x = x + (int)(Math.random()*5)-3;

      if (mouseY > y) 
        y = y + (int)(Math.random()*5)-1; 
      else
        y = y + (int)(Math.random()*5)-3;
    }
  }
}

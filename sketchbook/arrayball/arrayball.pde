class ball {
  float cx, cy, r, speed, gravity;
  ball() {
    cx=width/2;
    cy=height/2;
    r=height/10;
    speed=1;
    gravity=0;
  }
  void displayBall() {
    noFill();
    stroke(0);
    ellipse(cx, cy, r, r);
  }
  void rowBall() {
    cx+=speed;
    if (cx>=width) cx=0;
    speed+=gravity;
  }
}
ArrayList<ball> Balls;
void setup() {
  size(800, 600);
  Balls=new ArrayList<ball>();
}
void draw() {
  background(255);
  for (int i=0;i<Balls.size();i++) {
    Balls.get(i).displayBall();
    Balls.get(i).rowBall();
  }
  loadPixels();
  if (pixels[mouseY*width+mouseX]==color(0)) {
    fill(255,0,0);
    text("Boom", mouseX, mouseY);
  }
  updatePixels();
}
void mouseClicked() {
  Balls.add(new ball());
  Balls.get(Balls.size()-1).cy=mouseY;
  Balls.get(Balls.size()-1).cx=mouseX;
}


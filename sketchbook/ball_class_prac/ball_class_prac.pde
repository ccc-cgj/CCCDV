class ball {
  int bx, by, br;
  ball() {
    bx=mouseX;
    by=height/2;
    br=height/10;
  }
  void displayBall() {
    noFill();
    stroke(0);
    ellipse(bx, by, br, br);
  }
}
ArrayList<ball> balls;
ball myBall;
void setup() {
  size(800, 600);
  myBall=new ball();
  balls=new ArrayList<ball>();
  balls.add(myBall);
}
void draw() {
  background(255);
  for (int i=0;i<balls.size();i++) {
    balls.get(i).by=i*height/10+balls.get(i).br/2;
    balls.get(i).bx=mouseX;
    balls.get(i).displayBall();
  }
}
void mouseClicked() {
  balls.add(new ball());
}


class projection {
  int rx, ry;
  IntList xl, yl;
  projection() {
    rx=width/2;
    ry=height/2;
    xl=new IntList();
    yl=new IntList();
  }
  void repeat() {
    rx=mouseX;
    ry=mouseY;
  }
  void display() {
    rectMode(CENTER);
    colorMode(RGB, width, (width+height)/2, height, 255);
    noStroke();
    fill(rx, (rx+ry)/2, ry, r);
    rect(rx, ry, width/10, height/10);
  }
  void addproject() {
    xl.append(rx);
    yl.append(ry);
  }
  void project() {
    if (xl.size()>0) {
      colorMode(RGB, width, (width+height)/2, height, 255);
      fill(xl.get(xl.size()-1), (xl.get(xl.size()-1)+yl.get(xl.size()-1))/2, yl.get(xl.size()-1));
      rect(xl.get(xl.size()-1), yl.get(xl.size()-1), width/10, height/10);
    }
  }
}
ArrayList<projection> projections;
projection ho;
float r=random(255);
void setup() {
  size(800, 600);
  projections=new ArrayList<projection>();
  ho=new projection();
}
void draw() {
  colorMode(RGB, 255);
  background(255);
  ho.repeat();
  ho.display();
  for (int i=0;i<projections.size();i++) {
    projections.get(i).project();
  }
  ho.project();
}
void mouseClicked() {
  ho.addproject();
}


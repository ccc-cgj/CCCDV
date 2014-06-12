class eye {
  int bex, bey, bew, beh, sex, sey, sew, seh;
  float angle, dBS;
  eye() {
    bex=width/2;
    bey=height/2;
    beh=height/10;
    bew=beh;
    seh=beh/5;
    sew=seh;
  }
  void locateEs() {
    angle=atan2(-(bex-mouseY), -(bey-mouseX));
    dBS=dist(width/2, height/2, mouseX, mouseY)/dist(0, 0, bex, bey)*bew/2;
    if (mousePressed) {
      bex=mouseX;
      bey=mouseY;
    }
  }
  void displayEs() {
    noFill();
    stroke(0);
    ellipse(bex, bey, bew, beh);
    fill(0);
    ellipse(bex+dBS*cos(angle), bey+dBS*sin(angle), sew, seh);
  }
}
ArrayList<eye> eyes;
eye myEye;
void setup() {
  size(800, 600);
  myEye=new eye();
  eyes=new ArrayList<eye>();
  eyes.add(myEye);
  if (frame!=null) {
    frame.setResizable(true);
  }
}
void mouseClicked() {
  eyes.add(new eye());
  for (int i=0;i<eyes.size();i++) {
    eyes.get(i).locateEs();
    eyes.get(i).bex=int(random(width));
    eyes.get(i).bey=int(random(height));
  }
}
void draw() {
  background(255);
  for (int i=0;i<eyes.size();i++) {
    eyes.get(i).locateEs();
    eyes.get(i).displayEs();
  }
}


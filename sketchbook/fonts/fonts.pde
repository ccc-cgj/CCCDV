int i;
StringList pf;
String[] tmp;
void setup() {
  i=0;
  size(displayWidth, displayHeight);
  noStroke();
  background(0);
  colorMode(HSB);
  textAlign(CENTER, CENTER);
  pf=new StringList();
  tmp=PFont.list();
  for (int ii=0; ii<tmp.length; ii++) {
    pf.append(tmp[ii]);
  }
}
void draw() {
  fill(frameCount%255, 255, 255);
  background(0);
  if (i<pf.size()) {
    textFont(createFont(pf.get(i), 50, true), 50);
    text(pf.get(i), width/2, height/2);
  }
  if (i>=pf.size()) {
    i=pf.size()-1;
  }
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==UP) {
      if (i>0) i--;
    }
    if (keyCode==DOWN) {
      if (i<pf.size()) i++;
    }
  }
}


int i;
void setup() {
  i=0;
  size(displayWidth, displayHeight);
  background(0);
  colorMode(HSB);
  textAlign(CENTER, CENTER);
}
void draw() {
  fill(frameCount%255, 255, 255);
  background(0);
  textFont(createFont(PFont.list()[i], 50, true), 50);
  text(PFont.list()[i], width/2, height/2);
  if (i>=PFont.list().length-1) {
    noLoop();
  }
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==UP) {
      if (i>0) i--;
    }
    if (keyCode==DOWN) {
      if (i<PFont.list().length-1) i++;
    }
  }
}


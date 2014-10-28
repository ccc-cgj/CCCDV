int 
void setup() {
  size(displayWidth, displayHeight, P3D);
  if (frame!=null) frame.setResizable(true);
  textAlign(CENTER, CENTER);
  textFont(createFont("Helvetica", height/5, true));
  noStroke();
  fill(0);
}

void draw() {
  background(255);
  text('c', width/2, height/2);
  rotateX(rxi);
}


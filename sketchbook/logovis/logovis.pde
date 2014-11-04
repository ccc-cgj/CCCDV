char c = 'c';
float dx = mouseX - pmouseX;
void setup() {
  //a bunch of setting up
  size(displayWidth, displayHeight, P3D);
  if (frame != null) frame.setResizable(true);
  textFont(createFont("Helvetica", 200, true));
  //textFont(createFont("calibri", 200, true));
  noStroke();
  colorMode(HSB);
  textAlign(CENTER, CENTER);
  smooth();
  fill(0);
}
void draw() {
  //background
  //background(127 * sin(radians(frameCount)) + 127);
  background(255);

  //setting delta mouseX
  dx = mouseX - pmouseX;

  //draw the three 'c's
  //first
  pushMatrix();
  translate(width / 2 - textWidth(c), height / 2, 0);
  rotateX(-radians(mouseY - height / 2) / 10);
  rotateY(dx / 200);
  //fill(frameCount % 255, 255, 255);
  text(c, 0, 0, 0);
  popMatrix();
  //second
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateX(-radians(mouseY - height / 2) / 10);
  rotateY(dx / 200);
  //fill((frameCount + 255 / 3) % 255, 255, 255);
  text(c, 0, 0, 0);
  popMatrix();
  //third
  pushMatrix();
  translate(width / 2 + textWidth(c), height / 2, 0);
  rotateX(-radians(mouseY - height / 2) / 10);
  rotateY(dx / 200);
  //fill((frameCount + 510 / 3) % 255, 255, 255);
  text(c, 0, 0, 0);
  popMatrix();
}


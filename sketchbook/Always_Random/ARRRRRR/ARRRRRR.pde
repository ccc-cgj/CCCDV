IntList li;
color c;
void setup() {
  size(displayWidth * 9 / 10, displayHeight * 9 / 10);
  if (frame != null) frame.setResizable(true);
  li = new IntList();
  noStroke();
  c = color(random(255),random(255),random(255));
  fill(c);
  //mouseX = int(random(width));
  //mouseY = int(random(height));
}
void draw() {
  background(255);
  li.append(int(random(width)));
  li.append(int(random(height)));
  beginShape();
  for (int i = 0; i < li.size (); i += 2) {
    vertex(li.get(i), li.get(i+1));
  }
  endShape(CLOSE);
}


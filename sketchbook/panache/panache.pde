float a=0;
boolean b=true;
float rx=noise(a)*width, ry=noise(a+10)*height, 
gx=noise(a+20)*width, gy=noise(a+30)*width, 
bx=noise(a+40)*width, by=noise(a+50)*width;
void setup() {
  size(displayWidth, displayHeight);
}
void draw() {
  if (b) {
    dothaha();
  } else {
    panache();
  }
}
void dothaha() {
  background(255);
  float rx=noise(a)*width, ry=noise(a+10)*height, 
  gx=noise(a+20)*width, gy=noise(a+30)*width, 
  bx=noise(a+40)*width, by=noise(a+50)*width;
  noStroke();
  fill(255, 0, 0);
  ellipse(rx, ry, 5, 5);
  fill(0, 255, 0);
  ellipse(gx, gy, 5, 5);
  fill(0, 0, 255);
  ellipse(bx, by, 5, 5);
  a+=.01;
}
void panache() {
  background(255);
  float rx=noise(a)*width, ry=noise(a+10)*height, 
  gx=noise(a+20)*width, gy=noise(a+30)*width, 
  bx=noise(a+40)*width, by=noise(a+50)*width;
  loadPixels();
  colorMode(RGB, width, width, width);
  for (int i=0; i<pixels.length; i++) {
    pixels[i]=color(
    width-dist(i%width, int(i/width), rx, ry), 
    width-dist(i%width, int(i/width), gx, gy), 
    width-dist(i%width, int(i/width), bx, by)
      );
  }
  updatePixels();
  a+=.01;
}
void mouseClicked() {
  b = !b;
}


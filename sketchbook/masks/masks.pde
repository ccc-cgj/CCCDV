PImage source;
int a;
void setup() {
  source = loadImage("jjright.jpeg");
  size(source.width, source.height);
  noStroke();
  a=20;
}

void draw() {
  source.loadPixels();
  for (int x=0; x<source.width-a; x+=2*a) {
    for (int y=0; y<source.height-a; y+=2*a) {
      fill(source.pixels[x+a+(y+a)*width]);
      rect(x, y, 2*a, 2*a);
    }
  }
}

void keyPressed() {
  if (key==ENTER) {
    saveFrame();
  }
}

PImage img;
float r, g, b, angle;
void setup() {
  img=loadImage("peter1.jpg");
  img.resize(displayWidth, displayHeight);

  size(img.width, img.height);
  if (frame!=null) frame.setResizable(true);
}

void draw() {
  background(255);
  image(img, 0, 0);

  if (mousePressed) {
    loadPixels();
    r=red(pixels[mouseY*width+mouseX]);
    g=green(pixels[mouseY*width+mouseX]);
    b=blue(pixels[mouseY*width+mouseX]);
    updatePixels();

    noStroke();

    fill(r, g, b, 200);
    ellipse(mouseX, mouseY, 50, 50);

    fill(r, 0, 0, 200);
    rect(mouseX+30, mouseY-25, r*100/255, 10);

    fill(0, g, 0, 200);
    rect(mouseX+30, mouseY-5, g*100/255, 10);

    fill(0, 0, b, 200);
    rect(mouseX+30, mouseY+15, b*100/255, 10);

    fill(255);
    textSize(10);
    textFont(createFont("Arial", 10, true));

    text(int(r), mouseX+30, mouseY-50/3);
    text(int(g), mouseX+30, mouseY+5);
    text(int(b), mouseX+30, mouseY+50/3+10);
  }
  println(r, g, b);
}


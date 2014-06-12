PImage img;
float r,g,b,angle;
void setup() {
  img=loadImage("Aha.tif");
  
  size(img.width,img.height);
  if(frame!=null) frame.setResizable(true);
}

void draw() {
  background(255);
  image(img,0,0);
  
  if(mousePressed) {
    loadPixels();
    r=red(pixels[mouseY*width+mouseX]);
    g=green(pixels[mouseY*width+mouseX]);
    b=blue(pixels[mouseY*width+mouseX]);
    updatePixels();
    
    noStroke();
    
    fill(r,g,b,200);
    ellipse(mouseX,mouseY,100,100);
    
    fill(r,0,0,200);
    rect(mouseX+60,mouseY-50,r*100/255,23);
    
    fill(0,g,0,200);
    rect(mouseX+60,mouseY-17,g*100/255,23);
    
    fill(0,0,b,200);
    rect(mouseX+60,mouseY+16,b*100/255,23);
    
    fill(255);
    textSize(10);
    textFont(createFont("Arial",10,true));
    
    text(int(r),mouseX+60,mouseY-33);
    text(int(g),mouseX+60,mouseY);
    text(int(b),mouseX+60,mouseY+33);
  }
  println(r,g,b);
}


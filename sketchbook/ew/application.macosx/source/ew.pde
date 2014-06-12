boolean b=true;
float a=255;
color c=color(random(255),random(255),random(255));
color d=color(random(255),random(255),random(255));
void setup(){
  size(displayWidth,displayHeight,P3D);
}void draw(){
  if(b){
    bl();
  }else{
    wh();
  }rotateY(radians(mouseX/width));
  rotateX(radians(mouseY/height));
}void mouseClicked(){
  if(b){
    b=false;
  }else{
    b=true;
  }
}void bl(){
  pushMatrix();
  translate(mouseX,mouseY,0);
  loadPixels();
  for(int i=0;i<pixels.length;i++){
    pixels[i]=color(dist(i%width,int(i/width),mouseX,mouseY)+255-a);
  }updatePixels();
  noFill();
  stroke(c);
  sphere(255-a);
  rotateY(PI/4);
  rotateX(PI/4);
  fill(d);
  box((255-a)/2);
  fill(random(255),random(255),random(255));
  sphere((255-a)/10);
  popMatrix();
}void wh(){
  pushMatrix();
  translate(mouseX,mouseY,0);
  loadPixels();
  for(int i=0;i<pixels.length;i++){
    pixels[i]=color(a-dist(i%width,int(i/width),mouseX,mouseY));
  }updatePixels();
  noFill();
  stroke(d);
  sphere(255-a);
  rotateY(PI/4);
  rotateX(PI/4);
  fill(c);
  box((255-a)/2);
  fill(random(255),random(255),random(255));
  sphere((255-a)/10);
  popMatrix();
}void keyPressed(){
  if(key==' '){
    a+=10;
  }else if(key==ENTER){
    a-=10;
  }
}

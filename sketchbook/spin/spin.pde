float r=radians(5),c=radians(2);
void setup(){
  size(displayWidth,displayHeight,P3D);
}void draw(){
  background(0);
  boxX();
  r+=c;
}void boxX(){
  pushMatrix();
  translate(width/2,height/2,300);
  rotateY(PI/4);
  noFill();
  stroke(255);
  rotateX(r);
  box(50);
  popMatrix();
}

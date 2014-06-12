int mode=0;
void setup(){
  size(displayWidth,displayHeight);
  background(random(255));
}void draw(){
  noStroke();
  fill(random(255),random(255),random(255),random(255));
  ellipse(random(width),random(height),random(200),random(200));
}void mouseClicked(){
  background(random(255));
  saveFrame();
}void keyPressed(){
  if(mode==0){
    noLoop();
    mode=1;
  }else{
    loop();
    mode=0;
  }
}

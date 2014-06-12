color c=color(random(255),random(255),random(255),random(255));
color b=color(random(255),random(255),random(255),random(255));
void setup(){
  size(displayWidth,displayHeight);
  if(frame!=null){
    frame.setResizable(true);
  }
}void draw(){
  float a=atan2(mouseY-height/2,mouseX-width/2)*180/PI;
  float cx=cos(atan2(mouseY-height/2,mouseX-width/2));
  float cy=sin(atan2(mouseY-height/2,mouseX-width/2));
  background(0); 
  noStroke();
  fill(c);
  ellipse(width/2,height/2,500,500);
  fill(b);
  ellipse(cx*300+width/2,cy*300+height/2,100,100);
  stroke(255);
  line(cx*300+width/2,cy*300+height/2,cx*300+width/2+cos(a*5*PI/180)*50,cy*300+height/2+sin(a*5*PI/180)*50);
}

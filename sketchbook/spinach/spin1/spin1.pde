color c=color(random(255),random(255),random(255),random(255)),b=color(random(255),random(255),random(255),random(255));
float a=0,aa=0;
boolean il=true;
void setup(){
  size(displayWidth,displayHeight);
  if(frame!=null){
    frame.setResizable(true);
  }
}void draw(){
  float x=cos(a*PI/180.0f)*300+width/2,y=sin(a*PI/180.0f)*300+height/2;
  background(0);
  noStroke();
  fill(c);
  ellipse(width/2,height/2,500,500);
  fill(b);
  ellipse(x,y,100,100);
  a+=1;
  aa+=8;
  stroke(255);
  line(x,y,cos(aa*PI/180.0f)*50+x,sin(aa*PI/180.0f)*50+y);
}void keyPressed(){
  if(il){
    loop();
    il=false;
  }else{
    noLoop();
    il=true;
  }
}

int count=100;
ArrayList<String> zeros;
color c=color(random(255),random(255),random(255));
void setup() {
  size(displayWidth, displayHeight);
  if (frame!=null)frame.setResizable(true);
  frameRate(20);
  zeros=new ArrayList<String>();
  zeros.add("0");
}

void draw() {
  background(255);
  noStroke();
  fill(0);
  textFont(createFont("Times New Roman", 100, true));
  textAlign(CENTER);
  text("kSBBBG•k", random(width), random(height));
  
  count--;
  text(count,width/2,height/2);
  if(count<0){
    background(c);
    for(int i=0;i<zeros.size();i++){
      text("0",(i*textWidth("0"))%width,int(i/25)*100+100);
    }
    zeros.add("0");
    if(zeros.size()<208){
      fill(255,zeros.size()*255/208);
    }
    else{
      fill(255,255);
    }
    textSize(252);
    text("kSBBBG•k",width/2,height/2);
    if(zeros.size()<208){
      fill(0,zeros.size()*255/208);
    }
    else{
      fill(0,255);
    }
    textSize(250);
    text("kSBBBG•k",width/2,height/2);
    if(zeros.size()>208)noLoop();
  }
}


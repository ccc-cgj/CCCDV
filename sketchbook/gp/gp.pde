int a=0,b=0;
color c=color(0,0,0);
void setup(){
  size(800,600);
  if(frame!=null){
    frame.setResizable(true);
  }
  background(255);
  noStroke();
}void draw(){
  fill(0);
  rect(10,10,5,20);
  rect(25,10,10,20);
  rect(45,10,15,20);
  rect(70,10,20,20);
  rect(10,40,210,20);
  rect(10,70,210,20);
  if(mousePressed){
    if(!(mouseX<=230 && mouseY<=110)){
      fill(c);
      if(a==1){
        ellipse(mouseX,mouseY,5,5);
      }else if(a==2){
        ellipse(mouseX,mouseY,10,10);
      }else if(a==3){
        ellipse(mouseX,mouseY,15,15);
      }else if(a==4){
        ellipse(mouseX,mouseY,20,20);
      }
    }
  }loadPixels();
  for(int x=10;x<=220;x++){
    for(int y=40;y<=60;y++){
      pixels[y*width+x]=color(
      255-dist(x,y,45,50),
      255-dist(x,y,115,50),
      255-dist(x,y,185,50)
      );
    }
  }for(int x=10;x<=220;x++){
    for(int y=70;y<=90;y++){
      pixels[y*width+x]=color(
      dist(x,y,10,80)
      );
    }
  }
  updatePixels();
}void mouseClicked(){
  if(mouseX>=10 && mouseX<=15 && mouseY>=10 && mouseY<=30){
    a=1;
  }else if(mouseX>=25 && mouseX<=35 && mouseY>=10 && mouseY<=30){
    a=2;
  }else if(mouseX>=45 && mouseX<=60 && mouseY>=10 && mouseY<=30){
    a=3;
  }else if(mouseX>=70 && mouseX<=90 && mouseY>=10 && mouseY<=30){
    a=4;
  }if(mouseX>=10 && mouseX<=220 && mouseY>=40 && mouseY<=60){
    b=1;
    c=pixels[mouseY*width+mouseX];
  }if(mouseX>=10 && mouseX<=220 && mouseY>=70 && mouseY<=90){
    b=1;
    c=pixels[mouseY*width+mouseX];
  }
}void keyPressed(){
  if(key==' '){
    background(255);
  }if(key==ENTER){
    saveFrame("hhh");
  }
}

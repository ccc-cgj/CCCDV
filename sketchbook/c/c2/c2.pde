class Line2D{
  float xpos1;
  float ypos1;
  float xpos2;
  float ypos2;
  color c;
  boolean u;
  Line2D(){
    c=color(255);
    u=true;
  }
  void display(){
    if(u==true){
      if(mousePressed){
        u=false;
        xpos1=mouseX;
        ypos1=mouseY;
      }
    }
    else{
      if(mousePressed){
        u=true;
        xpos2=mouseX;
        ypos2=mouseY;
      }
    }
    noStroke();
    fill(random(255),random(255),random(255));
    // line(xpos1,ypos1,xpos2,ypos2);
    ellipse((xpos1 + xpos2) / 2, (ypos1 + ypos2) / 2, dist(xpos1, ypos1, xpos2, ypos2) / 2, dist(xpos1, ypos1, xpos2, ypos2) / 2);
  }
}
Line2D ahaha;
void setup(){
  size(1280,750);
  ahaha=new Line2D();
  background(0);
}void draw(){
  ahaha.display();
}

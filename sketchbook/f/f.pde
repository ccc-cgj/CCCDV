boolean a=true;
IntList coords=new IntList();
int x=0,y=0,r=int(random(255)),g=int(random(255)),b=int(random(255));
void setup(){
  size(displayWidth,displayHeight);
}void draw(){
  background(r,g,b);
  if(a){
    stroke(g,r,b);
    noFill();
    beginShape();
    for(int i=0;i<coords.size() && coords.size()-i>=1;i+=2){
      curveVertex(coords.get(i),coords.get(i+1));
    }endShape();
  }else{
    stroke(g,b,r);
    noFill();
    for(int j=0;j<coords.size() && coords.size()-j>=5;j+=2){
      beginShape();
      vertex(coords.get(j),coords.get(j+1));
      bezierVertex(coords.get(j),coords.get(j+1),coords.get(j+2),coords.get(j+3),coords.get(j+4),coords.get(j+5));
      endShape();
    }
  }
}void mouseClicked(){
  x=mouseX;
  y=mouseY;
  coords.append(x);
  coords.append(y);
}void keyPressed(){
  if(a==true){
    a=false;
  }else{
    a=true;
  }
}

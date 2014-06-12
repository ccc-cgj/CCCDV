void setup(){
  size(800,600);
}void draw(){
  background(255);
  for(int i=0;i<=width;i+=5){
    stroke(random(255),random(255),random(255));
    line(cos(i * 180 / width / PI) * 100 + width / 2,sin(i * 180 / width / PI) * 100 + height / 2,i,600);
  }
}

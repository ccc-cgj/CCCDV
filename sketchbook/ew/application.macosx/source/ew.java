import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ew extends PApplet {

boolean b=true;
float a=255;
int c=color(random(255),random(255),random(255));
int d=color(random(255),random(255),random(255));
public void setup(){
  size(displayWidth,displayHeight,P3D);
}public void draw(){
  if(b){
    bl();
  }else{
    wh();
  }rotateY(radians(mouseX/width));
  rotateX(radians(mouseY/height));
}public void mouseClicked(){
  if(b){
    b=false;
  }else{
    b=true;
  }
}public void bl(){
  pushMatrix();
  translate(mouseX,mouseY,0);
  loadPixels();
  for(int i=0;i<pixels.length;i++){
    pixels[i]=color(dist(i%width,PApplet.parseInt(i/width),mouseX,mouseY)+255-a);
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
}public void wh(){
  pushMatrix();
  translate(mouseX,mouseY,0);
  loadPixels();
  for(int i=0;i<pixels.length;i++){
    pixels[i]=color(a-dist(i%width,PApplet.parseInt(i/width),mouseX,mouseY));
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
}public void keyPressed(){
  if(key==' '){
    a+=10;
  }else if(key==ENTER){
    a-=10;
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "ew" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

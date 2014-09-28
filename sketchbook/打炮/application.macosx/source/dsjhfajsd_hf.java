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

public class dsjhfajsd_hf extends PApplet {

int x=PApplet.parseInt(random(1, 6)), y=1;
int pao, z=1;
ArrayList<pao> paoMen;
IntList xMen;
IntList yMen;
float MouseY=1;
int paoSe;
int c=color(random(255), random(255), random(255));
class pao {
  float paoX, paoY, paoW, paoH, paoV;
  pao() {
    paoW=50;
    paoH=50;
    paoV=20;
  }
  public void da() {
    noStroke();
    fill(c, paoSe);
    textSize(100);
    text("PAO", paoX, paoY-50);
  }
}
public void setup() {
  size(displayWidth, displayHeight);
  if (frame!=null)frame.setResizable(true);
  background(255);
  paoMen=new ArrayList<pao>();
  xMen=new IntList();
  yMen=new IntList();
  xMen.append(x);
  yMen.append(y);
  paoSe=0;
}

public void draw() {
  stroke(0);
  for (int i=1;i<6;i++) {
    line(width*i/5, 0, width*i/5, height);
    line(0, height*i/5, width, height*i/5);
  }
  pao=PApplet.parseInt(mouseX/(width/5))+1;
  if (y==6) {
    background(255);
    fill(0);
    noStroke();
    textAlign(CENTER);
    textSize(100);
    text("Game Over", width/2, height/2-50);
    noLoop();
  }
  if (z>1) {
    if (paoMen.get(paoMen.size()-1).paoY>MouseY+100) {
      paoMen.get(paoMen.size()-1).paoY-=paoMen.get(paoMen.size()-1).paoV;
      paoMen.get(paoMen.size()-1).da();
    }
  }
  paoSe+=20*255/( height-MouseY);
  /* cheating mode
   println(xMen);
   println(yMen);
   */
}

public void mouseClicked() {
  if (pao==x && (mouseY/(height/5))+1==y) {
    background(255);
    fill(255, 0, 0);
    noStroke();
    textAlign(CENTER);
    textSize(200);
    text("HIT", width/2, height/2-100);
    noLoop();
  }
  else {
    background(255);
    fill(0);
    noStroke();
    textAlign(CENTER);
    textSize(100);
    text("missed", width/2, height/2-50);
  }
  paoMen.add(new pao());
  paoMen.get(paoMen.size()-1).paoX=mouseX;
  paoMen.get(paoMen.size()-1).paoY=height;
  fill(random(255), random(255), random(255));
  noStroke();
  rectMode(CENTER);
  rect((xMen.get(xMen.size()-1))*width/5-width/10, (yMen.get(yMen.size()-1))*height/5-height/10, width/5-50, height/5-50);
  x=PApplet.parseInt(random(1, 6));
  y++;
  z++;
  xMen.append(x);
  yMen.append(y);
  MouseY=mouseY;
  paoSe=0;
}
public void config() {
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "dsjhfajsd_hf" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

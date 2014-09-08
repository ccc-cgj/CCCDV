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

public class fonts extends PApplet {

int i;
public void setup() {
  i=0;
  size(displayWidth, displayHeight);
  background(0);
  colorMode(HSB);
  textAlign(CENTER, CENTER);
}
public void draw() {
  fill(frameCount%255, 255, 255);
  background(0);
  textFont(createFont(PFont.list()[i], 50, true), 50);
  text(PFont.list()[i], width/2, height/2);
  if (i>=PFont.list().length-1) {
    noLoop();
  }
}
public void keyPressed() {
  if (key==CODED) {
    if (keyCode==UP) {
      if (i>0) i--;
    }
    if (keyCode==DOWN) {
      if (i<PFont.list().length-1) i++;
    }
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "fonts" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

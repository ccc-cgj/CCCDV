ArrayList<p> ps;
PImage img;

float tr = 100.0f;
float td = 100.0f;
float spf = 1.0f / 10.0f;

void setup() {
  size(800,1000);
  
  ps = new ArrayList<p>();
  img = loadImage("AR1.tif");
  img.loadPixels();
  
  int u = 10;
  for (int y = 0; y < img.height; y += u) {
    for (int x = 0; x < img.width; x += u) {
      if (red(img.pixels[y * img.width + x]) != 255) {
        ps.add(new p(x, y));
      }
    }
  }
  
  img.updatePixels();
}

void draw() {
  background(255);
  stroke(0, 64);
  
  for (int i = 0; i < ps.size(); i++) {
    p cp = ps.get(i);
    
    float md = dist(cp.ox, cp.oy, mouseX, mouseY);
    if (md < td) {
      float a = atan2(cp.oy - mouseY, cp.ox - mouseX);
      cp.ax = cos(a) * (td - md) * spf;
      cp.ay = sin(a) * (td - md) * spf;
    } else {
      cp.ax *= 0.9f;
      cp.ay *= 0.9f;
      float a = atan2(cp.oy - cp.y, cp.ox - cp.x);
      cp.ax += cos(a) * 10.0f * 0.1f;
      cp.ay += sin(a) * 10.0f * 0.1f;
    }
    
    cp.x += cp.ax;
    cp.y += cp.ay;
    
    float rd = dist(cp.x, cp.y, cp.ox, cp.oy);
    if (rd > tr) {
      cp.x = cp.ox + (cp.x - cp.ox) * tr / rd;
      cp.y = cp.oy + (cp.y - cp.oy) * tr / rd;
    }
    
    if (keyPressed && key == ' ') {
      line(cp.x, cp.y, cp.ox, cp.oy);
    } else {
      point(cp.x, cp.y);
    }
  }
}

class p {
  float x, y, ox, oy, ax, ay;
  
  p(float cx, float cy) {
    x = cx;
    y = cy;
    ox = x;
    oy = y;
    ax = 0;
    ay = 0;
  }
}

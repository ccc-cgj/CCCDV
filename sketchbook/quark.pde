quark up = new quark(100, 100);

void setup() {
  size(displayWidth, displayHeight);
  if (frame != null) frame.setResizable(true);
  noFill();
}
void draw() {
  background(255);
  stroke(0);
  for (int it = 0; it < 100; it++) up.entangle();
  up.draw();
}

class quark {
  float x, y;
  ArrayList<v2> tangles, vtangles;
  
  quark(float cx, float cy) {
    x = cx;
    y = cy;
    tangles = new ArrayList<v2>();
    vtangles = new ArrayList<v2>();
    tangles.add(new v2(0, 0));
    vtangles.add(new v2(0, 0));
  }
  
  void entangle() {
    if (tangles.size() < 1000) {
      tangles.add(new v2((random(2) - 1) * 10, (random(2) - 1) * 10));
      vtangles.add(new v2((random(2) - 1) * 10, (random(2) - 1) * 10));
    }
  }
  
  void draw() {
    pushMatrix();
    translate(x, y);
    // ellipse(0, 0, 90, 90);
    
    if (tangles.size() > 1) {
      for (int i = 0; i < tangles.size(); i++) {
        if (i < tangles.size() - 1) {
          line(tangles.get(i).x, tangles.get(i).y, tangles.get(i + 1).x, tangles.get(i + 1).y);
        }
        
        tangles.get(i).x += vtangles.get(i).x;
        tangles.get(i).y += vtangles.get(i).y;
        
        vtangles.get(i).x *= 0.3f;
        vtangles.get(i).y *= 0.3f;
        if (dist(0, 0, tangles.get(i).x, tangles.get(i).y) > 45) {
          vtangles.get(i).x += (cos(atan2(-tangles.get(i).y, -tangles.get(i).x))) * 10 * 0.7f;
          vtangles.get(i).y += (sin(atan2(-tangles.get(i).y, -tangles.get(i).x))) * 10 * 0.7f;
        } else {
          vtangles.get(i).x += (random(2) - 1) * 10 * 0.7f;
          vtangles.get(i).y += (random(2) - 1) * 10 * 0.7f;
        }
        
        if (i > 0) {
          vtangles.get(i).x *= 0.7f;
          vtangles.get(i).y *= 0.7f;
          vtangles.get(i).x += (cos(atan2(tangles.get(i - 1).y - tangles.get(i).y, tangles.get(i - 1).x - tangles.get(i).x))) * 0.3f;
          vtangles.get(i).y += (sin(atan2(tangles.get(i - 1).y - tangles.get(i).y, tangles.get(i - 1).x - tangles.get(i).x))) * 0.3f;
        }
        
        if (i < tangles.size() - 1) {
          vtangles.get(i).x *= 0.7f;
          vtangles.get(i).y *= 0.7f;
          vtangles.get(i).x += (cos(atan2(tangles.get(i + 1).y - tangles.get(i).y, tangles.get(i + 1).x - tangles.get(i).x))) * 0.3f;
          vtangles.get(i).y += (sin(atan2(tangles.get(i + 1).y - tangles.get(i).y, tangles.get(i + 1).x - tangles.get(i).x))) * 0.3f;
        }
      }
    }
    popMatrix();
  }
}

class v2 { float x, y; v2(float cx, float cy) { x = cx; y = cy; } }

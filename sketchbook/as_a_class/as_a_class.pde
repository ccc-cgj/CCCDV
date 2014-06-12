PImage matthew;
float nx = 406, ny = 347;
ArrayList<nosehair> nhs;

void setup() {
  size(800, 600);
  matthew = loadImage("matthew.JPG");
  // if (frame != null) frame.setResizable(true);
  nhs = new ArrayList<nosehair>();
  
  for (int i = 0; i < 50; i++) {
    nhs.add(new nosehair(20, nx, ny, 100));
  }
}

void draw() {
  background(255);
  image(matthew, width / 2 - matthew.width / 2, height / 2 - matthew.height / 2);
  
  for (int i = 0; i < nhs.size(); i++) {
    if (nhs.get(i).hair.size() > 0) {
      nhs.get(i).draw();
    } else {
      nhs.remove(i);
      nhs.add(new nosehair(20, nx, ny, 100));
    }
  }
}

class nosehair {
  ArrayList<PVector> hair;
  float ax, ay, sx, sy, r, st;
  
  nosehair(int it, float csx, float csy, float cr) {
    r = cr;
    sx = csx;
    sy = csy;
    st = 0;
    hair = new ArrayList<PVector>();
    for (int i = 0; i < it; i++) {
      hair.add(new PVector(sx, sy));
    }
    ax = random(2) - 1;
    ay = random(2) - 1;
  }
  
  void draw() {
    st++;
    stroke(0);
    float td = 0;
    for (int i = 0; i < hair.size(); i++) {
      if (i < hair.size() - 1) {
        line(hair.get(i).x, hair.get(i).y, hair.get(i + 1).x, hair.get(i + 1).y);
        td += dist(hair.get(i).x, hair.get(i).y, hair.get(i + 1).x, hair.get(i + 1).y);
      }
      if (i <= 0) {
        hair.get(i).x += ax;
        hair.get(i).y += ay;
        ax += random(2) - 1;
        ay += random(2) - 1;
        
        if (ax > 5) ax = 2;
        if (ax < -5) ax = -2;
        if (ay < 0) ay = 0.5;
        
        if (dist(hair.get(i).x, hair.get(i).y, sx, sy) > r) {
          if (random(10) < 5) ax *= -1;
          if (random(10) < 5) ay *= -1;
        }
      } else {
        hair.get(i).x += (hair.get(i - 1).x - hair.get(i).x) / 10;
        hair.get(i).y += (hair.get(i - 1).y - hair.get(i).y) / 10;
      }
    }
    if (td < 30 && st > 180) {
      hair = new ArrayList<PVector>();
    }
  }
}

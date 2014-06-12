int mode = 0;
int unit = 10;
int rad = 200;
float rd, gd, bd, maxd, maxdf;
float rx, ry, gx, gy, bx, by, arx, ary, agx, agy, abx, aby;

void setup() {
  size(1200, 600);
  rx = width / 2 + cos(0 * PI / 180) * rad;
  ry = height / 2 + sin(0 * PI / 180) * rad;
  gx = width / 2 + cos(60 * PI / 180) * rad;
  gy = height / 2 + sin(60 * PI / 180) * rad;
  bx = width / 2 + cos(120 * PI / 180) * rad;
  by = height / 2 + sin(120 * PI / 180) * rad;
  arx = random(2) - 1;
  ary = random(2) - 1;
  agx = random(2) - 1;
  agy = random(2) - 1;
  abx = random(2) - 1;
  aby = random(2) - 1;
  
  if (frame != null) {
    frame.setResizable(true);
  }
  
  noStroke();
  
  maxdf = 1.0f;
}

void mousePressed() {
  mode = ((mode == 0) ? 1 : 0);
}

void draw() {
  if (mode == 0) {
    if (maxdf < 1) {
      maxdf += 0.05;
    } else {
      maxdf = 1;
    }
  } else {
    if (maxdf > 0) {
      maxdf -= 0.05;
    } else {
      maxdf = 0;
    }
  }
  
  maxd = sqrt(pow(width, 2) + pow(height, 2));
  
  background(255);
  for (int x = 0; x < width; x += unit) {
    for (int y = 0; y < height; y += unit) {
      rd = dist(x, y, rx, ry);
      gd = dist(x, y, gx, gy);
      bd = dist(x, y, bx, by);
      
      fill(
      ((rd > maxd * maxdf) ? 255 : rd / (maxd * maxdf) * 255.0f),
      ((gd > maxd * maxdf) ? 255 : gd / (maxd * maxdf) * 255.0f),
      ((bd > maxd * maxdf) ? 255 : bd / (maxd * maxdf) * 255.0f)
      );
      rect(x, y, unit, unit);
    }
  }
  if (mode == 1) {
    fill(255, 0, 0);
    ellipse(rx, ry, 10, 10);
    fill(0, 255, 0);
    ellipse(gx, gy, 10, 10);
    fill(0, 0, 255);
    ellipse(bx, by, 10, 10);
  }
  
  rx += arx;
  ry += ary;
  gx += agx;
  gy += agy;
  bx += abx;
  by += aby;
  arx += random(2) - 1;
  ary += random(2) - 1;
  agx += random(2) - 1;
  agy += random(2) - 1;
  abx += random(2) - 1;
  aby += random(2) - 1;
  
  if (rx > width) {
    rx = width;
    arx *= -1;
  }
  if (rx < 0) {
    rx = 0;
    arx *= -1;
  }
  if (ry > height) {
    ry = height;
    ary *= -1;
  }
  if (ry < 0) {
    ry = 0;
    ary *= -1;
  }
  if (gx > width) {
    gx = width;
    agx *= -1;
  }
  if (gx < 0) {
    gx = 0;
    agx *= -1;
  }
  if (gy > height) {
    gy = height;
    agy *= -1;
  }
  if (gy < 0) {
    gy = 0;
    agy *= -1;
  }
  if (bx > width) {
    bx = width;
    abx *= -1;
  }
  if (bx < 0) {
    bx = 0;
    abx *= -1;
  }
  if (by > height) {
    by = height;
    aby *= -1;
  }
  if (by < 0) {
    by = 0;
    aby *= -1;
  }
  if (arx > 10 || arx < -10) {
    arx *= 0.2;
  }
  if (ary > 10 || ary < -10) {
    ary *= 0.2;
  }
  if (agx > 10 || agx < -10) {
    agx *= 0.2;
  }
  if (agy > 10 || agy < -10) {
    agy *= 0.2;
  }
  if (abx > 10 || abx < -10) {
    abx *= 0.2;
  }
  if (aby > 10 || aby < -10) {
    aby *= 0.2;
  }
}

float xpos, ypos, radius;
int bxpos, bypos;
IntList bposes;

void setup() {
  size(displayWidth, displayHeight);
  if (frame!=null) frame.setResizable(true);
  
  //setting initial position of the crazy cat
  xpos = int(random(0, 12));
  ypos = int(random(0, 12));

  //list of coordiates of blocks
  bposes = new IntList();
}

void draw() {
  //set the radius of crazy cat
  radius = ((width / 12) < (height / 12)) ? (width / 12) : (height / 12);
  background(255);

  //draw the matrix
  colorMode(RGB);
  stroke(0);
  for (int i=1; i<11; i++) {
    line(0, i*height/11.0f, width, i*height/11.0f);
    line(i*width/11.0f, 0, i*width/11.0f, height);
  }

  //draw the crazy cat
  colorMode(HSB);
  noStroke();
  fill(frameCount, 255, 255);
  ellipse(width/11.0f*(xpos-.5), height/11.0f*(ypos-.5), radius, radius);

  //draw all blocks
  colorMode(RGB);
  fill(0);
  for (int i=0; i<bposes.size (); i+=2) {
    rect(width/11.0f*(bposes.get(i)-1), height/11.0f*(bposes.get(i+1)-1), width/11.0f, height/11.0f);
  }
}

void mouseClicked() {
  //add new block coordinates
  bxpos = 1 + (11 * mouseX / width);
  bypos = 1 + (11 * mouseY / height);
  bposes.append(bxpos);
  bposes.append(bypos);
  
  //movement of the crazy cat
  //random if nowhere around is blocked
  if (int(random(0, 2)) == 0) xpos += int(random(0, 2)) == 0 ? 1 : -1;
  else ypos += int(random(0, 2)) == 0 ? 1 : -1;
}


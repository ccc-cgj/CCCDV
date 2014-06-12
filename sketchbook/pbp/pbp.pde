class letter {
  String seq;
  float x, y, ax, ay, ox, oy;
  letter(String cseq, float cx, float cy) {
    seq = cseq;
    x = cx;
    y = cy;
    ox = x;
    oy = y;
    ax = 0;
    ay = 0;
  }
}
String str = "explosion";
PFont f=createFont("Times New Roman", 100, true);
color c;
int count=0;
float ox=50, oy=100, r, g, b;
ArrayList<letter> ls;
boolean d=true;
int e=0;
void setup() {
  size(displayWidth, displayHeight, P3D);
  stroke(255);
  textFont(f);
  textMode(SHAPE);
  if (frame!=null)frame.setResizable(true);
  conf();
}
void conf() {  
  ls=new ArrayList<letter>();
  float x=ox, y=oy;
  for (int i=0;i<str.length();i++) {
    ls.add(new letter(str(str.charAt(i)), x, y));
    x+=textWidth(str.charAt(i));
    if (x>width-ox) {
      x=ox;
      y+=100;
    }
  }
  background((noise(e)*10*r)%255, (10*noise(e+10)*g)%255, (10*noise(e+20)*b)%255);
}
void draw() {
  for (int i=0;i<ls.size();i++) {
    fill((r+3*i)%255, (g+4*i)%255, (b+5*i)%255, 10);
    text(ls.get(i).seq, ls.get(i).x, ls.get(i).y);
    ls.get(i).x += ls.get(i).ax;
    ls.get(i).y += ls.get(i).ay;
    if (mousePressed && dist(ls.get(i).x, ls.get(i).y, mouseX, mouseY) < 100) {
      ls.get(i).ax += cos(atan2(ls.get(i).y - mouseY, ls.get(i).x - mouseX));
      ls.get(i).ay += sin(atan2(ls.get(i).y - mouseY, ls.get(i).x - mouseX));
    }

    ls.get(i).ax *= 0.9f;
    ls.get(i).ay *= 0.9f;

    if (keyPressed && key == ENTER) {
      ls.get(i).ax += (ls.get(i).ox - ls.get(i).x) / 10.0f;
      ls.get(i).ay += (ls.get(i).oy - ls.get(i).y) / 10.0f;
    }
  }
  while (d) {
    for (int x=0;x<=width;x++) {
      for (int y=0;y<=height;y++) {
        c=get(x, y);
        if (c==color(255)) {
          count++;
        }
      }
      d=false;
    }
  }
  b=count%100;
  g=((count-r)%10000)/100;
  r=(count-g*100-r)/10000;
  e++;
  if (keyPressed) {
    if (key==' ')background((noise(e)*10*r)%255, (10*noise(e+10)*g)%255, (10*noise(e+20)*b)%255);
    count+=noise(e)*1000000;
    if (key=='r')conf();
    if (key=='s')saveFrame("test");
  }
  if (count>=999999)count=int(random(100000, 999999));
}


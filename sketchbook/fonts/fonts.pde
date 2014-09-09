int I, pointer;
int a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
StringList pf;
int[] alphas= {
  b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z
};
void setup() {
  I=0;
  size(displayWidth, displayHeight);
  noStroke();
  background(0);
  colorMode(HSB);
  textAlign(CENTER, CENTER);
  pf=new StringList();
  for (int i=0; i<=PFont.list ().length-1; i++) {
    pf.append(PFont.list()[i]);
  }
  pf.sort();
  a=0;
  pointer=0;
  for (int i=0; i<pf.size (); i++) {
    if (i>0) {
      if (pf.get(i).charAt(0)!=pf.get(i-1).charAt(0)) {
        alphas[pointer]=i;
        pointer++;
      }
    }
  }
}
void draw() {
  fill(frameCount%255, 255, 255);
  background(0);
  if (I<=pf.size()-1) {
    textFont(createFont(pf.get(I), 50, true), 50);
    text(pf.get(I), width/2, height/2);
  }
  if (I>pf.size()-1) {
    I=pf.size()-1;
  }
  println(b);
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==UP) {
      if (I>0) I--;
    }
    if (keyCode==DOWN) {
      if (I<=pf.size()-1) i++;
    }
  }
  if (key=='a') {
    I=a;
  }
  if (key=='b') {
    I=b;
  }
  if (key=='c') {
    I=c;
  }
  if (key=='d') {
    I=d;
  }
  if (key=='e') {
    I=e;
  }
  if (key=='f') {
    I=f;
  }
  if (key=='g') {
    I=g;
  }
  if (key=='h') {
    I=h;
  }
  if (key=='i') {
    I=i;
  }
  if (key=='j') {
    I=j;
  }
  if (key=='k') {
    I=k;
  }
  if (key=='l') {
    I=l;
  }
  if (key=='m') {
    I=m;
  }
  if (key=='n') {
    I=n;
  }
  if (key=='o') {
    I=o;
  }
  if (key=='p') {
    I=p;
  }
  if (key=='q') {
    I=q;
  }
  if (key=='r') {
    I=r;
  }
  if (key=='s') {
    I=s;
  }
  if (key=='t') {
    I=t;
  }
  if (key=='u') {
    I=u;
  }
  if (key=='v') {
    I=v;
  }
  if (key=='w') {
    I=w;
  }
  if (key=='x') {
    I=x;
  }
  if (key=='y') {
    I=y;
  }
  if (key=='z') {
    I=z;
  }
}


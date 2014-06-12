size(1280,750);
loadPixels();
for(int i=0;i<pixels.length;i++){
  colorMode(RGB,255,255,255,255);
  pixels[i]=color(random(255),random(255),random(255),random(255));
}
updatePixels();
saveFrame("AR1");

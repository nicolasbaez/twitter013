int i, j, k, w=512;
int y[]=new int[w];
void setup() {
  size(512, 512);
}
void draw() {
  clear();
  noStroke();
  for (i=0; i<w; i++) {
    colorMode(HSB, w);
    j=y[i];
    k=(int)map(j, 0, w, 0, 64);
    fill(j, w, w, k);
    circle(256+random(9), j, k);
    y[i]-=random(9);
    if (j<0)y[i]=448;
  }
  fill(0);
  rect(256, 448, 3, 99);
}

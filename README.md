## twitter013 | #つぶやきProcessing 
https://twitter.com/nicolasbaez/status/1357427882071646208?s=20

![twitter](https://github.com/nicolasbaez/twitter013/blob/main/twitter013.gif)
```processing
void setup() {
  size(500, 500, P3D);
  strokeWeight(5);
}
float i, j, k, w=250, d=50;
void draw() {
  clear();
  ellipse(w, d, w, w);
  rotateX(radians(2*k));
  rotateY(radians(k));
  for (i=-w; i<=w*2; i+=d) {
    stroke(128);
    for (j=-w; j<=w*2; j+=d) {
      point(i, j, map(noise(i, j, k/100), 0, 1, -w*4, w*4));
    }
  }
  k++;
}
```

void setup() {
  size(1024, 1024);
}

void draw() {
  background(#ffffff);
  PVector a, b, c, d;
  int noseX = 512;
  int noseY = 512;
  int noseOffset = 130;
  int noseHeight = 130;
  a = new PVector(noseX, noseY - noseHeight);
  b = new PVector(noseX - noseOffset, noseY);
  c = new PVector(noseX + noseOffset, noseY);
  d = new PVector(noseX, noseOffset + noseY);
  
  fill(#ffffff);
  stroke(0);
  strokeWeight(25);
  triangle(a.x+250, a.y+250, b.x+250, b.y+250, c.x+250, c.y+250);
  
  quad(a.x, a.y, b.x, b.y, d.x, d.y, c.x, c.y);
}

void setup(){
  size(1024, 1024);
}

void draw(){
  background(#ffffff);
  
  int xLoc = 512; 
  int yLoc = 512;
  int w = 512; 
  int h = 256;
  
  ellipseMode(CORNER);
  fill(#ffffff);
  stroke(#000000);
  strokeWeight(25);
  
  ellipse(xLoc, yLoc, w, h);
  fill(#ff0000);
  circle(xLoc, yLoc, h);
  
  ellipseMode(CORNERS);
  ellipse(xLoc, yLoc, 0, 0);
  
  stroke(0);
  strokeWeight(5);
  line(-0000, yLoc, 9999, yLoc);
  line(xLoc, -9999, xLoc, 9999);
  
}

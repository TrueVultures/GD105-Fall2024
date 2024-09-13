int xLoc = 150;
int yLoc = 550;

void setup(){
  size(800, 800);
  background(#ffffff);
}  

void draw(){
  
  fill(255, 25);
  stroke(0, 25);
  strokeWeight(25);
  rect(xLoc, yLoc, 500, 200);
  fill(#ddddff);
  square(xLoc + 50, yLoc, 100);
  square(xLoc +250, yLoc, 100);
  
  stroke(0);
  strokeWeight(5);
  line(-9999, yLoc, 9999, yLoc);
  line(xLoc, -9999, xLoc, 9999);
}  

color bg = #141A7C;
PFont bville;

void setup(){
  size(1024, 1024);
  bville = loadFont("Algerian-48.vlw");
  textFont(bville);
  textSize(42);
} 

void draw(){
  background(#141A7C);
  
  noStroke();
  fill(#141A7C);
  ellipseMode(CORNER);
  
  fill(#f8f47e);
  circle(width * 0.1, height * 0.1, width * 0.81);
  fill(#fdfbc9);
  circle(width * 0.103, height * 0.103, width * 0.686);
  fill(bg);
  circle(width * 0.100, height * 0.100, width * 0.6);
  
  fill(#ffffff);
  textSize(50);
  text("Moon \nPower \nMakeup!", 300, 400);
}

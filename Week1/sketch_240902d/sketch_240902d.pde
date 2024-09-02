void setup() {
  size(800, 800);
  noStroke();
  strokeWeight(10);
  strokeCap(SQUARE);
}

void draw() {
  background(255);
  stroke(255, 0, 0);
  line(height, 0, 0, height);
  
  stroke(0, 255, 0);
  line(0, width/2, width, height/2);
  
  stroke(0, 0, 255);
  line(height/2, height/2, width, height/2);
  
  stroke(255, 0, 255);
  line(0, 0, width, height);
  stroke(0);
  line(width/2, 0, height/2, height/2);
  
  stroke(255, 0, 0);
  strokeWeight(30);
  rect(height/2, width/2, 100, 100);
  
  //Only save the image on the first frame
  if(frameCount == 1){
    save("LinesOutput090224.png");
  }
}

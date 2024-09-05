void setup(){
  size(666, 666);
  background(255);
}

// drawing (lines within the canvas)
void draw(){
  stroke(0);
  strokeWeight(10);
  line(666, height/2, width/2, height/2);
  line(0, 0, width, height);
  line(475, 333, 666, 666);
  line(333, 480, 666, 666);
  line(width/2, height, width/2, height/2);
  line(0, 0, 666, width/2);
  line(0, 0, width/2, height);
  strokeWeight(1);
 
}

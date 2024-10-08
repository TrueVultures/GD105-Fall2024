void setup(){
  size(800, 800);
  background(0);
  frameRate(50);
}

void draw(){
  background(0);
  noStroke();
  fill(255);
  circle(map(sin(frameCount*0.02), 0, 1, 400, 0),
         map(cos(2), 0, 1, 400, 300),
         200);
         
  circle(map(sin(2), 0, 1, 0, 450),
         map(cos(frameCount*0.02), 0, 1, 400, 0),
         200);
  
  
  circle(width/2 + sin(frameCount*0.06)*220,
        height/2 + cos(frameCount*0.02)*220,
        100);
         
  if(frameCount <= 315){
    saveFrame("frames/output-####.png");
  }         
}

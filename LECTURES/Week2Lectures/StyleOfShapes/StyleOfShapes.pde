void setup(){
 size(666,666); 
 frameRate(1);
}

void draw(){
  background(180);
  
  stroke(#6665BC, 255);
  strokeWeight(50);
  
  //noFill();
  circle(width/2, height/2, width*0.9);
  
  circle(666, 333, width*0.5);
  circle(0, 333, width*0.2);
  
  fill(#9B0C0F, 110);
  
  //noLoop();
}  

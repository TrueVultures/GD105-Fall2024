//red light turns on and off every hour
//yellow light turns on and off every minute
//green light turns on and off every second

void setup(){
  size(400, 950);
  background(#E0BF02);
  frameRate(1);
}

void draw(){
  background(#f3ce02);
  
  //lights
  fill(0);
  stroke(25);
  strokeWeight(5);
  
  // red light (hour)
  fill(0);
  circle(200, 175, 300);
  if(hour()%2==0){
    fill(#ee0000);
    circle(200, 175, 300);
  }
  
  
  //yellow light (minutes)
  fill(0);
  circle(200, 475, 300);
  if(minute()%2==0){
    fill(#eeeb00);
    circle(200, 475, 300);
  }
  
  //green light (seconds)
    fill(#00e400);
    circle(200, 775, 300);
    
  if(second()%2==0){
    fill(00e400);
    circle(200, 775, 300);
  }
  
  //Checks time on canvas
  //fill(255);
  //text(hour() + ":" + minute() + ":" + second(), width/2, height/2);
}

//if(frameCount <= 60){
   // saveFrame("frames/output-####.png");

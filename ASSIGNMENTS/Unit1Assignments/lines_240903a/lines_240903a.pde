void setup(){
  size(666, 666);
  background(#900000);
}

void draw(){
//background lines
  stroke(0);
  strokeWeight(5);
  //line(x, y, x, y)
  line(56, height, 56, 0);
  line(111, height, 111, 0);
  line(167, height, 167, 0);
  line(223, height, 223, 0);
  line(279, height, 279, 0);
  line(335, height, 335, 0);
  line(391, height, 391, 0);
  line(447, height, 447, 0);
  line(503, height, 503, 0);
  line(559, height, 559, 0);
  line(615, height, 615, 0);
  
  line(0, 56, width, 56);
  line(0, 111, width, 111);
  line(0, 167, width, 167);
  line(0, 223, width, 223);
  line(0, 279, width, 279);
  line(0, 335, width, 335);
  line(0, 391, width, 391);
  line(0, 447, width, 447);
  line(0, 503, width, 503);
  line(0, 559, width, 559);
  line(0, 615, width, 615);
  
//first illustration (foreground lines 1)
  stroke(0);
  strokeWeight(10);
  line(666, height/2, width/2, height/2);
  line(0, 0, width, height);
  line(491, 333, 666, 666);
  line(333, 480, 666, 666);
  line(width/2, height, width/2, height/2);
  line(0, 0, 666, width/2);
  line(0, 0, 333, 666);
  
// second illustration (foreground lines 2)
  line(0, 333, 333, 333);
  line(666, 0, 0, 666);
  line(339/2, 333, 0, 666);
  line(333, 480, 0, 666);
  line(333, 0, 333, 0);
  line(666, 0, 0, 333);
  line(333, 666, 666, 0);
 
  save("Output.png");
}

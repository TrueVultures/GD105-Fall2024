void setup(){
  size(900,900);
  background(0);
  noSmooth();
  frameRate(60); 
}
void draw(){
  background(255);
  
  float a = 666.0;
  int i = 0;
  
  for(int c = 2%5; c < 70;){
    float x = random(a); 
    float y = random(a);
    
    //runs the randomly generated lines that alter each output
    line(x, y, c, c);
    stroke(0);
    line(c, c, x, y);
    stroke(255, 255, 255, 249);
    line(900, 900, x, y);
    
    //runs the moire itself
    stroke(0);
    while (i < 666) {
    line(0, i, 900, i);
    line(i, 0, i, 900);
    i = i + 2;
    }
  }
 
  if(frameCount == 100){
  save("output.png");
  }
}

void setup(){
  size(800,800);
  background(0);
  frameRate(50);
}

void draw(){
  //background(0);
  
  float randomX, randomY, boxX, boxY;
  
  randomX = random(width);
  randomY = random(height);
  
  boxX = (int)constrain(randomX, width*0.4, height*0.6);
  boxY = (int)constrain(randomY, height*0.4, height*0.6);
 
  //line work
  stroke(random(255), random(0), random(0));
  strokeWeight(2);
  
  line(800, width/2, boxX, boxY);
  line(height/2, 800, boxX, boxY);
  
  line(0, width/2, boxX, boxY);
  line(width/2, 0, boxX, boxY);
  
  stroke(random(255));
  line(0, 0, boxX, boxY);
  line(800, 800, boxX, boxY);
  
  line(0, 800, boxX, boxY);
  line(800, 0, boxX, boxY);
 
 //moving squares
  
  noStroke();
  fill(random(255), random(0), random(0));
 
  square(map(cos(frameCount*0.06), -1, 1, width, 0), 
        map(sin(frameCount*0.08), -1, 1, 600, 600), 25);
        
  square(map(cos(frameCount*0.06), -1, 1, 600, 600), 
        map(sin(frameCount*0.08), -1, 1, height, 0), 25);
 
  fill(random(255));
  square(map(cos(frameCount*0.06), -1, 1, 200, 200), 
        map(sin(frameCount*0.08), -1, 1, height, 0), 25);
  square(map(cos(frameCount*0.06), -1, 1, width, 0), 
        map(sin(frameCount*0.08), -1, 1, 200, 200), 25);
  
  //rotating square
  translate(width/2, height/2);
  rotate(frameCount*0.02);

  fill(random(255), random(0), random(0));
  stroke(random(255));
  square(map(cos(frameCount*0.02), -1, 1, 100, 0), 
        map(sin(frameCount*0.01), -1, 1, 300, 300), 50);
        
  if(frameCount <= 360){
    saveFrame("frames/output-####.png");
  }  
}
  
  

void setup(){
  size(1000,1000);
  noSmooth();
  background(0);
  frameRate(50);
}

void draw(){
 //background(255);
 noFill();
 circle(width/2, height/2, 500);
 stroke(255);
 strokeWeight(10);
 translate(width/2, height/2);
 rotate(frameCount*0.02);
 line(0, cos(frameCount*0.02*width*4), 0, 120);
 circle(map(cos(frameCount*0.2), -1, 1, 500, 500),
        map(sin(frameCount*0.1), -1, 1, 250, 250), 50);
 rotate(frameCount*0.04);
 line(500, sin(frameCount*0.05*width), 0, 250);
 noStroke();
 fill(#ff0000);
 square(map(cos(frameCount*0.02), -1, 1, 100, 0), 
        map(sin(frameCount*0.01), -1, 1, 300, 300), 50);
 square(map(cos(frameCount*0.06), -1, 1, 100, 0), 
        map(sin(frameCount*0.08), -1, 1, 450, 450), 50);
        
  if(frameCount <= 630){
    saveFrame("frames/output-####.png");
  }  
}

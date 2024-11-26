//code for BluePurpleLines class
class Lines{
  PVector pos1,pos2;
  
  Lines(float x, float y, float x1, float y1){
    pos1 = new PVector(x, y);
    pos2 = new PVector(x1, y1);
  }
 
  
  void display(){
    //Purple lines sourcing from the upper left of the canvas, blue lines spreading from the bottom right of the canvas
    stroke(random(80), random(0), random(180));
    rotate(frameCount*0.02);
    line(pos1.x, pos1.y, sin(frameCount*0.05*pos2.x), cos(frameCount*0.05*pos2.y));
    stroke(random(0), random(0), random(180));
    line(pos1.y, pos1.x, pos2.x, pos2.y);
    line(pos1.x, pos1.y, pos2.y, pos2.x);
  }
  
  void update(){
    //changes values onto the lines which constantly updates their coordinates
    pos1.add(PVector.random2D().mult(2));
    pos2.add(0, -1.75);
   }
  }

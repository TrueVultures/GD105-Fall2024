//code for Voretex class
class Vortex{
  PVector pos2;
  color c;
  
  Vortex(float x, float y){
    pos2 = new PVector(x, y);
  }
  
  void display(){
//arcs located on the upper left of the canvas to represent a spinning vortex
  stroke(0);
  noFill();
  strokeWeight(1);
  //translate(width/2, height/2);
  rotate(frameCount*0.02);
  arc(13, 147, 274, 321, 200, 202);
  arc(121, -83, 481, 236, 197, 201);
  arc(118, 131, 344, 387, 199, 202);
  arc(-105, -13, 313, 547, 195, 196);
  
  
  }
  
  void update(){
    //changes values onto the lines which constantly updates their coordinates
    pos2.sub(PVector.random2D().mult(20));
    pos2.sub(-10, 10);
   }
  }

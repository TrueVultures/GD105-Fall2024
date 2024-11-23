//code for second particle class
class Particle1{
  PVector pos2;
  color c;
  int size;
  
  Particle1(float x, float y, int s){
    pos2 = new PVector(x, y);
    size = s;
  }
  
  void display(){
    //squares located at the center of the canvas (width/2, height/2)
    fill(c);
    stroke(0);
    rectMode(CENTER);
    square(pos2.x, pos2.y, size);
    square(pos2.y, pos2.x, size);
  }
  
  void update(){
    //updates coordinates so that the squares change size and position the further diagonal they go within the canvas
    pos2.sub(PVector.random2D().mult(20));
    pos2.sub(-10, 10);
    size = max(size - 1, 3);
    
    c =#ff0000;
   }
  }

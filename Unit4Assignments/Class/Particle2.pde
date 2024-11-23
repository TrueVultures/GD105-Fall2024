//code for third particle class
class Particle2{
  PVector pos3;
  color c;
  int size;
  
  Particle2(float x, float y, int s){
    pos3 = new PVector(x, y);
    c = color(int(random(255)));
    size = s;
  }
  
  void display(){
    //squares at the upper left of the canvas (0,0)
    fill(c);
    noStroke();
    rectMode(CENTER);
    square(pos3.x, pos3.y, size);
    square(pos3.y, pos3.x, size);
  }
  
  void update(){
    //updates coordinates so that the squares change color, size, and position the further down and right they go within the canvas
    pos3.sub(PVector.random2D().mult(2));
    pos3.sub(0, -1.75);
    size = max(size + 1, 0);
    
    //constrains the squares to become lighter in color overtime
    c = constrain(c + int(random(-1, 2)), 0, 200);
   }
  }

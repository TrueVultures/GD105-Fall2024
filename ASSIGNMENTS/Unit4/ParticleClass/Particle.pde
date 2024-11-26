//code for first particle class
class Particle{
  PVector pos1;
  color c;
  int size;
  
  Particle(float x, float y, int s){
    pos1 = new PVector(x, y); 
    c = color(int(random(255)));
    size = s;
  }
  
  void display(){
    //squares at the bottom right of the canvas (width, height)
    fill(c);
    noStroke();
    rectMode(CENTER);
    square(pos1.x, pos1.y, size);
    square(pos1.y, pos1.x, size);
  }
  
  void update(){
    //updates coordinates so that the squares change color, size, and position the further up and left they go within the canvas
    pos1.add(PVector.random2D().mult(2));
    pos1.add(0, -1.75);
    size = max(size + 1, 0);
    
    //constrains the squares to become lighter in color overtime
    c = constrain(c + int(random(-1, 2)), 0, 200);
   }
  }

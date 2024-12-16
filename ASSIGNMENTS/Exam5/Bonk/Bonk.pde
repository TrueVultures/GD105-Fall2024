PVector square;
PVector velocity;
int radius = 50;

void setup(){
  size(900, 900);
  frameRate(50);
  
  square = new PVector(width/2, height/2);
  velocity = PVector.random2D().mult(10);
}

void draw(){
  background(0);

  rectMode(CENTER);
  square(square.x, square.y, radius*2);
  square.add(velocity);
  
  boolean rightEdge = square.x + radius > width;
  boolean leftEdge = square.x + radius < 0;
  boolean bottomEdge = square.y + radius > height;
  boolean topEdge = square.y + radius < 0;

  if(rightEdge || leftEdge){
    velocity.x *= -1;
    println("collided/true");
  }
  
  if(bottomEdge || topEdge){
    velocity.y *= -1;
    println("collided/true");
  }
}

//I'm failry sure I have an idea as to how to solve this program yet have no idea as to why it refuses to run. I've tried different formats, moved several lines of code around, experimented with debugging and the program will not tell me what the issue is

boolean isFlying = false;
FlyingTurtle ft;
Turtle t;

void setup(){
  size(1024, 1024);
  background(255);
  noSmooth();
  
  t = new Turtle(width * 0.50, height * 0.25);
  ft = new FlyingTurtle(width * 0.50, height * 0.25);
}

void draw(){ //<>//
  
  background(255); //<>//
  stroke(0); //<>//
  t.teleport(width * 0.59, height * 0.32); //<>//
  t.heading.set(1, 0); //<>//
  for(int i = 0; i < 145; i++){ //<>//
    ft.forward(664.0); //<>//
    t.turn(144); //<>//
    ft.forward(323.0); //<>//
    t.turn(26); //<>//
  }
}
class FlyingTurtle extends Turtle{
   FlyingTurtle(int x, int y) {
    xpos = x;
    ypos = y;
  for(int i = 0; i < 145; i++){
   if(isFlying = true){
    noStroke();
  }else{
   stroke(random(255), random(255), random(255));
  }
 }
}

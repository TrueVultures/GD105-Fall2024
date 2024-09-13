void setup(){
  size(700, 700);
  background(0);
}

void draw(){
  //background circle
  createShape();
  fill(255);
  ellipse(350, 305, 650, 700);
  fill(0);
  //background rectangles
  rect(0, height/2, 700, 95);
  rect(0, 150,700, 80);
  rect(0, 250,700, 80);
  rect(235, -30, 220, 876);
  //second background circle
  fill(0);
  arc(350, 300, 400, 400, 500, 650);
  //foreground triangles
  fill(10);
  triangle(350+10,100+10,210+10,445+10,485+10,445+10);
  fill(255);
  triangle(350, 100, 210, 445, 485, 445);
  
}  

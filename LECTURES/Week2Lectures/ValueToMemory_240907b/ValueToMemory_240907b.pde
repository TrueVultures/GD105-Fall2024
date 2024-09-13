color red, periwinkle;
float shapeX, shapeY;
float shapeSize = 150;
float sizeStep = 25;

void setup(){
  size(666, 666);
  noStroke();
  rectMode(CENTER);
} 

void draw(){
  
  shapeSize = 150;
  shapeX = 150;
  shapeY = 150;
 
  float sizeStep = 19;
  float xStep = 70;
  float yStep = 70;
  
  background(255);
  red = color(#de1822, 99);
  periwinkle = color(#b289fd, 99);
  
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  
  
  int a; // specify the data type when we declare
  
  a = 30; //Assigns the value '30' to the variable 'a.' 30 is Not equal to a. 30 is assigned to a.
  println(a);

  a = a + 40; // 30 + 40 is 70. the a value is now assigned '70.'
  println(a);
  
}  
  

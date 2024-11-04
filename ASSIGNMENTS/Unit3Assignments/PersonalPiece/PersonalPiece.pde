color[] boxPaletteA = {#3F48CC, #FFF200, #ff0000, #22B14C, #08BFFF, #ffffff, #999999};
color[] boxPaletteB = {#9C00FF, #FF00D5, #FF9900, #B97A57, #FA938D, #000000, #999999};
int[] boxPositions = {150, 200, 250, 300, 350, 400, 450};

boolean clearCanvas = false;
int strokeSize = 2;
int i = 0;


void setup(){
  size(900,900);
  background(255);
  noSmooth();
  frameRate(60);
  stroke(0);
  strokeWeight(2);
}

//Ability to draw and erase on the canvas
void mouseDragged(){
  if(mouseButton == LEFT){
    stroke(0);
    strokeWeight(strokeSize);
  } else {
    strokeWeight(50);
    stroke(255);
  }
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

void draw(){
  //background(255);
  //Menu bar blue background
  rectMode(LEFT);
  stroke(0);
  strokeWeight(3);
  fill(#000cff);
  rect(0, 0, 150, height);
  rect(0, 0, width, 100);
  rect(0, 0, 150, 100);
  
  textSize(17);
  fill(255);
  text("DRAWING CANVAS\n\nHold down \nLEFT MOUSE \nBUTTON\n to draw.\n\nRed X clears canvas\n(Double click the X\n to draw again)\n\n+ and - adjusts\n stroke size.\n\nNegative stroke size\n will crash canvas.\n\n Color buttons not \noperatble.\n(Too much code\n required)", 10, 500);
  text("Stroke Size: " + strokeSize, 160, 30);
  
//Menu bar color "buttons"
  rectMode(CENTER);
  stroke(0);
  strokeWeight(3);
  for(int i = 0; i < boxPositions.length; i++){
    fill(boxPaletteA[i]);
    square(50, boxPositions[i], 50);
    fill(boxPaletteB[i]);
    square(100, boxPositions[i], 50);
  }
  
//Stroke size buttons
  noFill();
  stroke(1);
  line(100, 430, 100, 470);
  line(80, 450, 120, 450);
  line(70, 450, 30, 450);
  
  noFill();
  stroke(0);
  strokeWeight(1);
  rect(100, 450, 50, 50);
  rect(50, 450, 50, 50);

//Clear canvas button (Top left with red X)
  updateclearCanvas();
  noFill();
  stroke(1);
  fill(255);
  rect(75, 50, 100, 80);
  stroke(#ff0000);
  strokeWeight(10);
  line(40, 25, 110, 75);
  line(40, 75, 110, 25);
}

void updateclearCanvas(){
  if(clearCanvas){
    fill(255);
    noStroke();
    rect(526, height/2, 749, 697);
  } 
}

//Code allowing Stroke size and Clear canvas buttons to work
boolean isMouseOver(int x, int y, int w, int h){
  if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
    return  true;
  }
  return false;
}

//Clear canvas statement
void mousePressed(){
  fill(255);
  textSize(20);
  if(isMouseOver(30, 10, 100, 80) == true){
    clearCanvas = !clearCanvas;
  }
//Stroke size statements  
  if(isMouseOver(75, 425, 50, 50) == true){
    strokeSize = strokeSize + 2;
    
  }
  
  if(isMouseOver(25, 425, 50, 50) == true){
    strokeSize = strokeSize - 2;
  }
}

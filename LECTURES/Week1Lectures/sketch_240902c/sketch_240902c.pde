//Setup runs at the beginning
void setup(){
  size(666, 666);
  noSmooth();
}

//Draw runs at every frame
void draw(){
  background(0);
  
  //Center the origin
  //Spin
  translate(width/2, height/2);
  rotate(frameCount * 0.001);
  
  //Draw the face
  noStroke();
  fill(#ffbf00);
  circle(0, 0 , width * 0.9);
  
  //Draw the eyes
  fill(#000000);
  circle(width*-0.25, height*-0.2, width*0.05);
  circle(width* 0.25, height*-0.2, width*0.05);
  
  //Draw the mouth
  noFill();
  stroke(#000000);
  strokeWeight(width*0.05);
  arc(0, 0, width*0.6, width*0.6, 0, TAU*0.5);
  
  //save an image
  if(frameCount == 500){
    save("SmileyFace.png");
  }
}

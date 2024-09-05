void setup(){
  size(500, 500);
}
void draw(){
// draw the sky
background(#1C97FF);

// draw a house //<>// //<>// //<>// //<>// //<>// //<>//

// draw the building
fill(#D31519);
rect(100, 200, 300, 200);

// draw a door and windows
fill(#4B250B);
rect(120, 240, 89, 165);
fill(#D6D6D6);
rect(278, 240, 82, 73);
fill(#211003);
circle(140, 321, 25);

//draw the sun
fill(#FFD70D);
circle(471, 25, 185);

// draw the ground
fill(#1D8301);
noStroke();
rect(0, 400, 500, 100);

// draw the flowers
}

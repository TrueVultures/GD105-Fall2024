//entire canvas is a clock
//the sun stays in center. sun is the clock in center 
//clock has hour, and min hand that tells the current time
//whats featured on the canvas shifts based on current time (hour and day of the month)
//Whenever it is day(hours 5-19,) the sun and clock are revealed. whenever it is night(18-4,) the moon takes over the center position
//based on time, whether it be midday or midnight, and phases of the moon, more will be revealed depending on the ratio of white to black on the canvas
//white background displays black clouds, black background displays white stars
//moon phases and what can be seen can be altered by pressed a & d for second clock
//time can be altered with w & s keys for second clock

//sigils around second clock, create moon and all phases, figure how to change canvas from white to black (frameCount)
//phases of the moon depending on day, current phase displayed on second clock, moon appears when canvas is dark (fades in when canvas is fully black), white stars for black canvas, black clouds for white canvas, hidden info for each
//audio plays depending on time and moon phases

//moon changes every 4 days
//clock hands must have inverted colors based on surface color, all clock colors invert on new moon phase

//clock must somehow be featured during moon phases(hidden second clock on the upper right of the canvas in white stroke, appears when background is fully black)
float dayRadius;
float minRadius;
float hrsRadius;

void setup(){
  frameRate(50);
  size(900,900);
  noSmooth();
  
  int radius = min(width, height) / 2;
  dayRadius = radius * 0.15;
  minRadius = radius * 0.45;
  hrsRadius = radius * 0.40;
}

void draw(){
  background(255);
  
  // float variables for analog clock
  float d = map(day(), 0, 30, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  //sun rays
  stroke(0);
  strokeWeight(10);
  noFill();
  triangle(50, 450, 450, 550, 450, 350);
  triangle(450, 550, 450, 350, 850, 450);
  
  triangle(350, 450, 550, 450, 450, 50);
  triangle(350, 450, 450, 850, 550, 450);
  
  triangle(350, 450, 100, 100, 450, 350);
  triangle(550, 450, 800, 100, 450, 350);
  triangle(100, 800, 350, 450, 450, 550);
  triangle(800, 800, 450, 550, 550, 450);
  
  triangle(350, 450, 81, 350, 370, 370);
  triangle(550, 450, 820, 320, 530, 370);
  triangle(122, 597, 350, 450, 370, 530);
  triangle(880, 650, 530, 530, 550, 450);
  
  triangle(450, 350, 277, 9, 370, 370);
  triangle(530, 370, 608, 111, 450, 350);
  triangle(350, 790, 450, 550, 370, 530);
  triangle(600, 765, 450, 550, 550, 450);
  
  line(113, 790, 800, 100);
  line(112, 110, 800, 800);
  line(50, 450, 850, 450);
  line(450, 50, 450, 850);
  
  line(130, 594, 450, 450);
  line(291, 48, 450, 450);
  line(116, 355, 450, 439);
  line(599, 128, 451, 457);
  
  line(358, 763, 427, 448);
  line(812, 321, 450, 450);
  line(860, 640, 450, 450);
  line(600, 758, 450, 450);
  
  //DAY/NIGHT CYCLE
  fill(0);
  rectMode(CENTER);
  rect(width/2, 450, 900, 900);
  
  //first clock
  fill(255);
  circle(450, 450, 480);
  circle(450, 450, 400);
  noFill();
  strokeWeight(5);
  circle(450, 450, 290);
  
  arc(517, 442, 181, 348, 8, 5);
  arc(606, 369, 474, 323, 2, 4);
  arc(529, 380, 467, 300, 2, 4);
  arc(390, 463, 275, 187, 1, 3);
  arc(377, 544, 272, 166, 6, 8);
  arc(451, 547, 225, 203, 6, 8);
  arc(622, 327, 272, 166, 3, 4);
  
  //second clock
  fill(255);
  strokeWeight(10);
  circle(515, 450, 275);
  fill(0);
  circle(515, 450, 200);
  stroke(255);
  circle(515, 450, 170);

  
  //first clock numerals
  strokeWeight(3);
  strokeCap(SQUARE);
  stroke(0);
  line(450, 210, 450, 250);
  line(470, 210, 470, 250);
  line(420, 210, 440, 250);
  line(440, 210, 420, 250);
  
  line(470, 650, 470, 690);
  line(440, 690, 450, 650);
  line(460, 690, 450, 650);
  
  line(250, 470, 210, 470);
  line(210, 460, 250, 440);
  line(250, 460, 210, 440);
  
  line(690, 440, 655, 440);
  line(690, 450, 655, 450);
  line(690, 460, 655, 460);
  
  //second clock dividers
  line(515, 585, 475, 540);
  line(560, 540, 620, 540);
  line(610, 480, 650, 450);
  line(600, 395, 610, 350);
  line(535, 351, 500, 310);
  line(470, 360, 410, 360);
  line(430, 400, 380, 459);
  line(420, 550, 415, 470);
  
  
  //clock hands
  line(width/2, height/2, width/2 + cos(m) * minRadius, height/2 + sin(m) * minRadius);
  line(width/2, height/2, width/2 + cos(h) * hrsRadius, height/2 + sin(h) * hrsRadius);
 
  circle(450, 450, 5);
  stroke(255);
  circle(515, 450, 5);
  line(515, 450, width/2 + cos(d) * secRadius, width/2 + sin(d) * secRadius);
  
  //MOON PHASES
  
  //full moon
  
  stroke(255);
  fill(0);
  strokeWeight(1);
  circle(450, 450, 650);
  fill(255);
  circle(450, 450, 630);
  
  fill(35);
  stroke(0);
  strokeWeight(3);
  ellipse(589, 450, 363, 495);
  noFill();
  
  //crescent arcs
  stroke(#D1D1D1);
  arc(331, 264, 148, 274, -1, 2);
  arc(266, 274, 94, 206, -1, 1);
  arc(189, 336, 126, 221, -1, 0);
  arc(317, 329, 316, 133, 2, 3);
  arc(207, 384, 136, 179, 0, 3);
  arc(216, 480, 159, 226, -1, 3);
  arc(202, 499, 256, 656, 6, 7);
  
  //caved arcs
  fill(17);
  stroke(0);
  arc(580, 382, 164, 207, 0, 3);
  arc(580, 382, 164, 185, 0, 3);
  arc(580, 382, 164, 164, 0, 3);
  
  noFill();
  arc(617, 390, 116, 265, -1, 1);
  arc(540, 393, 116, 265, -4, -2);
  
  //etc
  fill(#D1D1D1);
  stroke(#D1D1D1);
  ellipse(450, 751, 101, 21);
  ellipse(512, 154, 43, 24);
  ellipse(158, 500, 34, 70);
  ellipse(258, 665, 68, 48);
  
  stroke(0);
  strokeWeight(10);
  line(232, 426, 252, 412);
  line(269, 433, 258, 454);
  line(298, 442, 298, 463);
  line(333, 441, 338, 461);
  
  fill(0);
  circle(250, 480, 5);
  circle(364, 275, 5);
  circle(279, 275, 5);
  
  noFill();
  circle(450, 450, 630);
  
  //nose
  fill(255);
  stroke(0);
  strokeWeight(3);
  triangle(400, 355, 400, 540, 593, 540); 
  noStroke();
  rect(405, 448, 27, 195);
 
  //crescent eye 
  stroke(0);
  fill(0);
  circle(310, 370, 150);
  fill(255);
  circle(310, 370, 140);
  fill(0);
  circle(310, 370, 130);
  fill(#050505);
  ellipse(310, 370, 104, 80);
  
  //caved eye
  fill(0);
  circle(310, 370, 74);
  stroke(#0f0000);
  noFill();
  strokeWeight(20);
  circle(310, 370, 40);

  //
}

//entire canvas is a clock (maybe a puzzle to convert the time into night and make reveal all the hidden symbols and reveal the full moon)

//whats featured on the canvas shifts based on current time (hour and day of the month)
//white background displays black clouds, black background displays white stars (turtle class)

//moon phases and what can be seen can be altered by pressed a & d for second clock
//hidden illustrations are revealed by pressing q and e
//time can be altered with w & s keys for second clock. objective is to have the user turn canvas to black, reveal full moon and all hidden illustrations with w a s d q e
//(this can be based on certain times on both clocks)

//create moon and all phases, figure how to change canvas from white to black depending on time and user input(frameCount)
//current phase hinted on second clock, moon only appears when canvas is fully dark (fades in when canvas is fully black)
//audio plays depending on time and moon phases

//everything must begin at new moon phase with white background
//collisions with certain clock hands changes events
//clock hands must have inverted colors based on surface color, all clock colors invert on new moon phase
 
float dayRadius;
float minRadius;
float hrsRadius;

void setup(){
  frameRate(50);
  size(900,900);
  noSmooth();
  
  int radius = min(width, height) / 2;
  //int radius0 = min(515, 450)
  dayRadius = radius * 0.10;
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
  
  //if(hour()>18){
  fill(0);
  rectMode(CENTER);
  rect(width/2, 450 + cos(m), 900, 900);
  //}
  
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
  line(515, 450, 515 + cos(d) * dayRadius, 515 + sin(d) * dayRadius);
  
//MOON PHASES
  
  //full moon
  
 // if(hour()>20){
  stroke(255);
  fill(0);
  strokeWeight(1);
  circle(450, 450, 650);
  fill(255);
  circle(450, 450, 630);
  
  //crescent arcs
  stroke(#D1D1D1);
  noFill();
  strokeWeight(3);
  arc(331, 264, 148, 274, -1, 2);
  arc(266, 274, 94, 206, -1, 1);
  arc(189, 336, 126, 221, -1, 0);
  arc(317, 329, 316, 133, 2, 3);
  arc(207, 384, 136, 179, 0, 3);
  arc(216, 480, 159, 226, -1, 3);
  arc(202, 499, 256, 656, 6, 7);
  
  arc(442, 712, 252, 235, 3, 5);
  arc(496, 734, 252, 235, 3, 5);
  arc(469, 726, 252, 235, 3, 5);
  
  arc(403, 251, 252, 235, 5, 7);
  arc(377, 258, 252, 235, 5, 7);
  arc(343, 263, 252, 235, 5, 7);
  
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
  
  //caved
  fill(35);
  stroke(0);
  strokeWeight(3);
  ellipse(589, 450, 363, 495);
  noFill();
  
  //caved arcs
  strokeWeight(3);
  fill(17);
  stroke(0);
  arc(580, 382, 164, 207, 0, 3);
  arc(580, 382, 164, 185, 0, 3);
  arc(580, 382, 164, 164, 0, 3);
  
  noFill();
  arc(617, 390, 116, 265, -1, 1);
  arc(540, 393, 116, 265, -4, -2);
  arc(643, 390, 116, 214, -1, 1);
  arc(513, 393, 116, 214, -4, -2);
  arc(603, 405, 197, 198, -5, -3);
  
  arc(516, 686, 284, 140, -2, 0);
  arc(517, 677, 327, 146, -2, 0);
  arc(515, 660, 360, 146, -2, 0);
  
  //caved eye
  fill(0);
  strokeWeight(3);
  stroke(0);
  circle(580, 370, 170);
  stroke(255);
  strokeWeight(2);
  noFill();
  circle(580, 370, 135);
  circle(580, 370, 60);
  fill(255);
  circle(580, 370, 20);
  
  //FULL MOON TO CRESCENT
  //if(day()%4==0){
  fill(0);
  stroke(0);
  //ellipse(589, 450, 363, 495);
  //}
  
  //nose
  fill(255);
  stroke(0);
  strokeWeight(3);
  triangle(400, 355, 400, 540, 593, 540); 
  noStroke();
  rect(405, 448, 27, 195);
  stroke(#d1d1d1);
  line(389,467, 429, 500);
  noFill();
  arc(383, 505, 60, 60, 1, 3);
  
  arc(394, 495, 270, 131, 6, 7);
  arc(366, 471, 255, 205, 6, 7);
  arc(332, 443, 239, 292, 6, 7);
 
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
  
  fill(0);
  circle(310, 370, 74);
  stroke(#0f0000);
  noFill();
  strokeWeight(20);
  circle(310, 370, 40);
  //}
  
//ETC
  
  //hidden second clock
  noFill();
  stroke(255);
  strokeWeight(4);;
  circle(120, 760, 238);
  circle(155, 760, 110);
  arc(138, 673, 22, 43, 2, 4);
  arc(134, 846, 22, 43, -1, 1);
  arc(35, 805, 137, 108, 0, 1);
  arc(-57, 756, 284, 57, 0, 1);
  arc(128, 676, 164, 107, 2, 3);
  
  circle(120, 760, 210);
  circle(155, 760, 140);
  circle(155, 760, 4);

  line(155, 760, 191, 692);
  line(155, 760, 136, 683);
  
  //hidden first clock
  circle(780, 760, 238);
  circle(780, 760, 110);
  circle(780, 760, 210);
  circle(780, 760, 140);
  circle(780, 760, 4);
  line(708, 760, 675, 760);
  line(852, 760, 888, 760);
  line(780, 655, 780, 692);
  line(780, 867, 780, 830);
  
  line(780, 760, 780 + cos(m) * minRadius, 760 + sin(m) * minRadius);
  line(780, 760, 780 + cos(h) * hrsRadius, 760 + sin(h) * hrsRadius);
  
  //bottom middle 
  line(300, 830, 600, 830);
  line(450, 900, 450, 810);
  triangle(275, 870, 300, 830, 325, 870);
  triangle(580, 870, 600, 830, 625, 870);
  circle(450, 805, 10);
  circle(300, 855, 25);
  circle(300, 855, 10);
  circle(450, 830, 20);
  circle(601, 855, 25);
  circle(601, 855, 10);
  arc(383, 841, 43, 44, 0, 3);
  arc(382, 848, 63, 56, 0, 3);
  arc(379, 774, 169, 229, 1, 2);
  arc(503, 784, 136, 146, 1, 2);
  line(493, 854, 493, 890);
  line(520, 853, 522, 890);
  
  //upper left 
  circle(90, 100, 135);
  arc(205, 100, 135, 135, 0, 5);
  circle(150, 190, 135);
  circle(205, 100, 5);
  strokeWeight(6);
  line(221, 33, 225, 12);
  line(271, 101, 293, 101);
  
  //middle left 
  line(100, 350, 100, 590);
  line(100, 588, 50, 620);
  line(50, 620, 100, 620);
  line(115, 551, 80, 551);
  line(81, 552, 62, 536);
  line(62, 538, 80, 515);
  line(123, 468, 76, 468);
  line(78, 467, 58, 486);
  line(58, 488, 57, 449);
  line(37, 412, 37, 438);
  line(34, 410, 56, 410);
  line(56, 413, 56, 369);
  line(53, 369, 78, 369);
  line(58, 452, 37, 436);
  arc(81, 330, 79, 54, -2, 1);
  
  //middle left
  square(450, 25, 30);
  square(450, 65, 30);
  square(450, 105, 30);
  square(410, 25, 30);
  square(410, 65, 30);
  square(410, 105, 30);
  square(490, 65, 30);
  square(490, 105, 30);
  square(490, 25, 30);
  
  //middle right
  arc(830, 360, 100, 66, -1, 4);
  arc(830, 425, 100, 66, 1, 8);
  arc(830, 490, 100, 66, -4, 1);
  line(830, 562, 830, 330); 
  line(857, 525, 830, 330); 
  line(799, 520, 830, 330); 
  line(780, 555, 800, 517); 
  line(870, 555, 856, 518); 
  
  //upper right 
  strokeWeight(3);
  circle(730, 110, 200);
  circle(790, 110, 200);
  circle(760, 110, 130);
  strokeWeight(10);
  ellipse(760, 110, 202, 126);
  circle(760, 112, 84);
  
  fill(255);
  triangle(865, 105, 877, 110, 865, 115);
  triangle(660, 105, 645, 110, 660, 115);
  
  triangle(852, 82, 866, 78, 857, 88);
  triangle(665, 81, 649, 78, 657, 88);
  
  triangle(861, 136, 855, 142, 868, 143);
  triangle(660, 124, 649, 135, 664, 132);
}

// I would implement the use of Rotations and Quadrilaterals but that is something I still need to get an understanding of before applying on assignments

color gray = #303030;
color red = #580202;
PFont aldhabi; 

void setup(){
  background(0);
  size(1200, 900);
  aldhabi = loadFont("Aldhabi-48.vlw");
  textFont(aldhabi);
}  

void draw(){
  
  fill(0);
  stroke(0);
  square(1200/2, 900/2 , 9999);
  
  //Upper left illustration
  stroke(255);
  strokeWeight(10);
  noFill();
  circle(130, 160, 155);
  circle(260, 160, 155);
  circle(195, 265, 155);
  
  circle(260, 160, 10);
  
  stroke(0);
  fill(0);
  circle(360, 160, 155);
  
  strokeCap(SQUARE);
  stroke(255);
  strokeWeight(10);
  line(302, 95, 320, 83);
  line(302, 225, 320, 237);
  
  //Middle left illustration
  stroke(255);
  strokeWeight(6);
  noFill();
  circle(195, 520, 300);
  circle(195, 520, 200);
  circle(195, 520, 100);
  
  //white circles
  stroke(255);
  fill(255);
  circle(75, 485, 30);
  circle(105, 430, 30);
  circle(163, 399, 30);
  circle(143, 405, 30);
  circle(225, 399, 30);
  circle(281, 428, 30);
  circle(315, 484, 30);
  circle(74, 552, 30);
  circle(277, 614, 32);

  // black circles
  stroke(0);
  fill(0);
  circle(71, 499, 30);
  circle(101, 435, 30);
  circle(153, 402, 30);
  circle(229, 402, 30);
  circle(292, 439, 30);
  circle(284, 609, 30);
  
  //outlined circles
  fill(0);
  stroke(255);
  strokeWeight(2);
  circle(106, 608, 36);
  circle(164, 641, 40);
  circle(317, 551, 39);
  circle(224, 642, 39);
  
  //red circles
  stroke(red);
  fill(red);
  circle(317,551, 26);
  circle(106,608, 26);
  circle(224,642, 28);
  
  // lines
  strokeCap(SQUARE);
  stroke(255);
  strokeWeight(6);
  line(45, 520, 345, 520);
  line(195, 370, 195, 670);

  strokeWeight(1);
  stroke(0);
  fill(0);
  circle(195, 520, 92);
  
  stroke(255);
  strokeWeight(6);
  line(155, 547, 195, 470);
  line(215, 569, 195, 470);
  line(242, 544, 195, 470);
  
  //third illustration
  stroke(255);
  fill(0);
  strokeWeight(2);
  circle(130, 790, 200);
  
  fill(255);
  circle(230, 790, 200);
  
  fill(0);
  stroke(0);
  circle(250, 790, 172);
  
  fill(0);
  stroke(255);
  strokeWeight(10);
  ellipse(302, 790, 202, 126);
  circle(302, 790, 70);
  
  fill(255);
  triangle(410, 783, 410, 790, 420, 786);
  triangle(195, 783, 195, 790, 185, 786);
  
  //center illustration
  stroke(255);
  fill(0);
  strokeWeight(1);
  circle(700, 370, 650);
  fill(255);
  circle(700, 370, 630);
  
  fill(gray);
  stroke(0);
  strokeWeight(3);
  ellipse(822, 370, 391, 484);
  noFill();
  
  //nose
  fill(255);
  stroke(255);
  triangle(627, 273, 623, 430, 800, 434); 
  stroke(0);
  line(632, 432, 806, 435);
  line(640, 282, 804, 435);
  
  stroke(#D1D1D1);
  line(580, 432, 614, 432);
  line(565, 424, 582, 432);
  line(567, 426, 556, 408);
  line(632, 395, 588, 384);
  
  stroke(#D1D1D1);
  strokeWeight(2);
  line(464, 223, 444, 186);
  line(488, 188, 497, 129);
  line(475, 199, 471, 152);
  line(548, 174, 606, 68);
  line(571, 187, 706, 55);
  line(602, 207, 808, 74);
  line(511, 328, 402, 477);
  line(530, 337, 446, 556);
  line(540, 345, 545, 645);
  line(565, 425, 582, 432);
  line(384, 382, 553, 288);
  line(467, 312, 389, 316);
  
  //eyes 
  stroke(0);
  fill(0);
  circle(535, 260, 170);
  fill(255);
  circle(535, 260, 163);
  fill(0);
  circle(535, 260, 155);
  fill(#050505);
  ellipse(535, 260, 125, 90);
  
  
  fill(0);
  circle(535, 260, 80);
  stroke(#0f0000);
  noFill();
  strokeWeight(20);
  circle(535, 260, 49);
  
  fill(0);
  strokeWeight(3);
  stroke(0);
  circle(830, 260, 180);
  stroke(255);
  strokeWeight(2);
  noFill();
  circle(830, 260, 138);
  circle(830, 260, 60);
  fill(255);
  circle(830, 260, 22);
  
  //dark spots
  fill(#D1D1D1);
  stroke(#D1D1D1);
  ellipse(697, 683, 101, 21);
  ellipse(641, 66, 43, 24);
  ellipse(426, 269, 32, 70);
  stroke(#272727);
  fill(#272727);
  ellipse(1001, 356, 37, 145);
 
  line(739, 279, 805, 428);
  line(756, 316, 855, 403);
  line(811, 350, 901, 375);
  
  //mouth
  stroke(#151515);
  line(716, 501, 662, 512);
  line(715, 500, 797, 532);
  line(795, 530, 836, 509);
  line(685, 507, 771, 522);
  line(883, 559, 796, 533);
  line(890, 530, 836, 509);
  line(758, 542, 812, 538);
  line(738, 509, 814, 520);
  line(682, 508, 762, 544);
  line(676, 530, 740, 534);
  line(800, 527, 865, 519);
  line(882, 560, 890, 530);
  line(836, 508, 714, 501);
  line(870, 523, 920, 516);
  line(883, 554, 920, 516);
  line(884, 526, 838, 547);
  
  line(873, 523, 892, 490);
  line(892, 490, 882, 478);
  line(732, 480, 714, 501);
  line(732, 480, 751, 486);
  line(838, 509, 815, 495);
  line(814, 495, 810, 474);
  
  line(898, 537, 900, 557);
  line(900, 557, 905, 549);
  line(770, 559, 760, 578);
  line(760, 544, 770, 560);
  line(816, 538, 798, 559);
  line(798, 559, 828, 600);
  
  stroke(#D1D1D1);
  line(661, 512, 584, 512);
  line(559, 528, 672, 528);
  line(550, 544, 684, 544);
  
  line(531, 476, 584, 512);
  line(559, 528, 500, 488);
  line(550, 544, 486, 499);
  
  line(466, 311, 486, 499);
  line(480, 326, 500, 488);
  line(532, 478, 502, 339);
  
  //etc
  stroke(0);
  strokeWeight(10);
  fill(0);
  line(466, 308, 453, 323);
  line(492, 329, 486, 350);
  line(525, 343, 527, 363);
  line(557, 340, 569, 358);
  
  circle(466, 364, 5);
  circle(519, 152, 5);
  circle(594, 152, 5);
  
  noFill();
  stroke(0);
  strokeWeight(10);
  circle(700, 370, 640);
  
  //text
  fill(255);
  textSize(50);
  text("MOON GOD \n      RHER", 600, 768);
  
  save("PersonalPieceOutput.png");
}  

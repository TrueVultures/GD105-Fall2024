//entire canvas is a clock (mpuzzle to convert the time into night and make reveal all the hidden illus by manual input)

//whats featured on the canvas shifts based on current time (hour and day of the month)
//white background displays black clouds, black background displays white stars (turtle class)


//!!NEVER SET UP
//moon phases and what can be seen can be altered by pressed a & d for second clock
//hidden illus are revealed by pressing q and e
//time can be altered with w & s keys for second clock. objective is to have the user turn canvas to black, reveal full moon and all hidden illus with w a s d q e
//(this can be based on certain times on both clocks)

//create moon phases, figure how to change canvas from white to black depending on time and user input(frameCount)
//current phase hinted on second clock, moon only appears when canvas is fully dark (fades in when canvas is fully black)
//audio plays depending on time and moon phases

//everything must begin at new moon phase with white background
//collisions with certain clock hands changes events
//clock hands must have inverted colors based on surface color, all clock colors invert on new moon phase

//phases of the moon depending on day, current phase shown on second clock, moon appears when canvas is fully dark (fades in when canvas is fully black), white stars for black canvas, black clouds for white canvas
//audio plays depending on time and moon phases
//sort moon and illus into separate classes that update

//clock hands must have inverted colors based on surface color, all clock colors invert on new moon phase

illus[] a;
moon[] b;

float dayRadius;
float minRadius;
float hrsRadius;

void setup(){
  //frameRate(50);
  size(900,900);
  noSmooth();
  
  int radius = min(width, height) / 2;
  //int radius0 = min(515, 450)
  dayRadius = radius * 0.10;
  minRadius = radius * 0.45;
  hrsRadius = radius * 0.40;
  
  a = new illus[15];
  for(int i = 0; i < a.length; i++){
    a[i] = new illus();
  }
  
  b = new moon[15];
  for(int i = 0; i < a.length; i++){
    b[i] = new moon();
  }
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
  
  
   for(int i = 0; i < a.length; i++){
    a[i].display();
  }
  
  for(int i = 0; i < b.length; i++){
    b[i].display();
  }
  
  //save("output4.png");
}

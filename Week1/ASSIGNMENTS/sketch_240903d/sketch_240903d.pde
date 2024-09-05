// The replica piece IS an album cover named "No Love Deep Web" by Death Grips. Most versions of the image are censord yet some are uncensord therefore I advise not to directly search the album up.

void setup(){
  size(800, 800);
  background(#839574);
}

void draw(){
  // wall vertical lines
  stroke(255);
  strokeWeight(5);
  line(400, 0, 300, 760);
  line(0, 200, 45, 725);
  line(800, 20, 460, 775);
  line(800, 550, 620, 800);
  line(720, 800, 800, 720);
  
  //wall horizontal lines
  stroke(255);
  strokeWeight(5);
  line(150, 0, 800, 150);
  line(0, 250, 800, 400);
  line(0, 425, 800, 550);
  line(0, 550, 722, 650);
//line(0, 615, 693, 700); (Appeared more appealing hiding these lines)
  line(0, 670, 655, 750);
//line(0, 490, 765, 600); (Appeared more appealing hiding these lines)
  
  //wall vertical lines 2
  stroke(255);
  line(770, 590, 790, 725);
  line(700, 690, 710, 800);
  line(655, 750, 660, 800);
  
  line(380, 800, 382, 775);
  line(380, 800, 0, 750);
  
  stroke(10);
  line(0, 725, 613, 800);
  
  //lighting
  noStroke();
  fill(#FFF5E7);
  triangle(0, 450, 0, 575, 200, 500);
  fill(#FFF1E3);
  triangle(0, 475, 0, 700, 225, 525);
  fill(#FFFAEC);
  triangle(0, 500, 0, 726, 200, 550);
  
  fill(#AA805D);
  noStroke();
  triangle(880, 880, 1724, 0, 760, 800);
  
  // censor bar
  stroke(0);
  strokeWeight(250);
  strokeCap(SQUARE);
  line(0,870,470, 300);
  
  save("ReplicaPiece.png");
}

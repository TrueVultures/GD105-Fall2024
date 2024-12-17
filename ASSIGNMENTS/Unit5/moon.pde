class moon{

  moon(){ 
    }
  
  void display(){
     
  //full moon
  if(hour()>20){
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
    
    //to crescent moon
    if(day()%4==0){
    fill(0);
    stroke(0);
    ellipse(589, 450, 363, 495);
    }
    
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
    
    //to true moon
    if(day()%8==0){
      noStroke();
      fill(255);
      circle(450, 450, 630);
    
      noFill();
      stroke(204);
      strokeWeight(3);
      arc(151, 450, 221, 481, -1, 1);
      arc(716, 707, 251, 346, 3, 5);
      arc(446, 393, 74, 63, -3, 0);
      arc(446, 443, 100, 100, -3, 0);
      arc(446, 366, 58, 63, -3, 0);
      arc(142, 450, 100, 339, -1, 1);
      arc(192, 450, 271, 605, -1, 1);
      arc(826, 556, 431, 525, -3, -2);
      arc(703, 487, 410, 668, -4, -2);
      arc(410, 606, 133, 375, -1, 1);
      arc(321, 280, 260, 100, -3, -1);
      arc(461, 142, 100, 266, 0, 1);
      
      stroke(15);
      strokeWeight(10);
      fill(0);
      ellipse(335, 310, 140, 140);
      ellipse(224, 350, 80, 80);
      ellipse(555, 310, 140, 140);
      ellipse(659, 357, 80, 80);
      
      strokeWeight(3);
      stroke(197);
      noFill();
      line(206, 454, 390, 399);
      line(505, 403, 708, 463);
      
      line(206, 454, 136, 432);
      line(765, 454, 708, 463);
      
      triangle(390, 450, 446, 258, 500, 450); 
      
      arc(355, 318, 129, 193, -1, 1);
      arc(535, 318, 129, 193, 2, 4);
      fill(173);
      triangle(390, 450, 446, 399, 500, 450);
      
      stroke(159);
      strokeWeight(6);
      line(205, 500, 212, 589);
      line(329, 558, 329, 621);
      line(375, 529, 360, 480);
      line(450, 529, 459, 469);
      line(557, 511, 555, 465);
      line(627, 523, 643, 470);
      line(626, 521, 597, 631);
      line(556, 508, 542, 576);
      
      stroke(93);
      strokeWeight(9);
      line(143, 535, 292, 523);
      line(289, 521, 331, 558);
      line(375, 529, 324, 558);
      line(480, 526, 371, 529);
      line(477, 526, 561, 505);
      line(558, 504, 631, 524);
      line(624, 524, 762, 496);
      }
     }
    }
   }

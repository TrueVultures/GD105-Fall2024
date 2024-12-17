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
    
    //FULL MOON TO CRESCENT
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
    }
  }
}

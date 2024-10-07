PFont levenim;

void setup(){
  background(#0000ff);
  size(500, 400);
  levenim = loadFont("LevenimMT-Bold-48.vlw");
  textFont(levenim);
}

void draw(){
  textSize(40);
  String s = "T R Y I N G T O C R E A T E A C R O S S W O R D P U Z Z L E W A S I N S A N E L Y A B S U R D A N D S O I L E A V E T H I S M E S S A G E T O T H E R E A D E R ";
  fill(#000000);
  text(s, 40, 40, 400, 430);
  
  save("Output.png");
}

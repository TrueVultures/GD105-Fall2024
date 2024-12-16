class AnimImage{

PImage[] AztecRaveMonkey;

  AnimImage(){

    AztecRaveMonkey = new PImage[14];
    
    for (int i = 0; i < 14; i++) {
      String base = "AztecRaveMonkey";
      AztecRaveMonkey[i] = loadImage(base + i + ".png");
    }
  }

  void display(){
   image(AztecRaveMonkey[frameCount%AztecRaveMonkey.length], width/2, height/2, 900, 900); 
  }
}

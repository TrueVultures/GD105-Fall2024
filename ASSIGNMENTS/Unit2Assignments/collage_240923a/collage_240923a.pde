PImage dog1;
PImage dog2;
PImage dog3;
PImage dog4;
PImage dog5;

PImage cat1;
PImage cat2;
PImage cat3;
PImage cat4;
PImage cat5;

PImage radical;
PImage bastard;
PImage whitepony;
PImage exmilitary;
PImage vaudevillevillain;
PImage scaring;

PImage stalker;
PImage cyberpunk;
PImage yumenikki;
PImage darksouls3;
PImage mgs2;
PImage termina;

void setup(){
  background(#E3D68E);
  size(900, 900);
  
  //albums
  radical = loadImage("Radical.png");
  bastard = loadImage("Bastard.png");
  whitepony = loadImage("WhitePony.png");
  exmilitary = loadImage("Exmilitary.png");
  vaudevillevillain = loadImage("Vaudevillevillain.png");
  scaring = loadImage("Scaring.png");
  
  //video games
  stalker = loadImage("STALKER.png");
  cyberpunk = loadImage("Cyberpunk_2077.png");
  yumenikki = loadImage("YumeNikki.png");
  darksouls3 = loadImage("darksouls3.png");
  mgs2 = loadImage("MGS2.png");
  termina = loadImage("Termina.png");
  
  //dog
  dog1 = loadImage("IMG_4742-removebg-preview.png");
  dog2 = loadImage("IMG_4809-removebg-preview.png");
  dog3 = loadImage("IMG_4897-removebg-preview.png");
  dog4 = loadImage("IMG_5728-removebg-preview.png");
  dog5 = loadImage("IMG_5749-removebg-preview.png");
  
  //cat
  cat1 = loadImage("IMG_5693-removebg-preview.png");
  cat2 = loadImage("IMG_5679-removebg-preview.png");
  cat3 = loadImage("IMG_5615-removebg-preview.png");
  cat4 = loadImage("IMG_5489-removebg-preview.png");
  cat5 = loadImage("IMG_5413-removebg-preview.png");
  
}

void draw(){
  translate(width/2, height/2);
  imageMode(CENTER);
  
  image(cat2, 350, -119, 200, 300);
  
  //video games
  image(cyberpunk, -377, -346, 187, 226);
  image(yumenikki, -204, -320, 187, 275);
  image(darksouls3, 212, -320, 204, 260);
  image(stalker, 384, -352, 144, 197);
  image(termina, 0, -360, 225, 191);
  image(mgs2, 0, -131, 672/3, 788/3);
  
  //albums
  image(radical, -74, 225, 150, 150);
  image(bastard, 76, 225, 150, 150);
  image(whitepony, -2, 375, 150, 150);
  image(exmilitary, 0, 75, 150, 150);
  image(vaudevillevillain, -152, 375, 150, 150);
  image(scaring, 149, 375, 150, 150);
  
  //cat
  image(cat4, -364, 312, 188, 300);
  image(cat1, -394, 42, 149, 245);
  
  image(cat5, 123, 99, 208, 370);
  image(cat3, -102, -22, 232, 400);
  
  //dog
  image(dog1, 295, 372, 215, 330);
  image(dog2, 207, 256, 181, 300);
  image(dog3, -327, 337, 200, 346);
  image(dog4, -173, 262, 293, 435);
  image(dog5, 360, 300, 185, 300);
  
  if(frameCount == 100){
  save("collage.png");
  }
}

AnimImage[] a;

void setup(){
  size(1280, 900);
  frameRate(2);
  imageMode(CENTER);
  
  a = new AnimImage[15];
  for(int i = 0; i < a.length; i++){
    a[i] = new AnimImage();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < a.length; i++){
    a[i].display();
  }
 }

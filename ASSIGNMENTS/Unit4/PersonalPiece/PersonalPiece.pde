//declaration of classes
Vortex[] r;
Lines[] b;
void setup (){
  background(0);
  frameRate(50);
  size(900, 900);
  
//initialization of classes pt 1  
  r = new Vortex[128];
  for(int i = 0; i < r.length; i++){
    r[i] = new Vortex(width-2, height-2);
  }
  
  b = new Lines[128];
  for(int i = 0; i < b.length; i++){
    b[i] = new Lines(width+2, height+2, width+10, height+10);
  }
}
void draw(){
//initialization of classes pt 2, enables changes active changes to be made in the canvas 
  for(int i = 0; i < r.length; i++){
    r[i].display();
    r[i].update();
  }
  
  for(int i = 0; i < b.length; i++){
    b[i].display();
    b[i].update();
  }
   
}  

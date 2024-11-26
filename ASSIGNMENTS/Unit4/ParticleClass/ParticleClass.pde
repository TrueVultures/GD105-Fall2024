//declaration of particle classes
Particle[] q;
Particle2[] e;
Particle1[] w;
void setup (){
  background(0);
  size(900, 900);
  
  //lines 11-25 initializes all particle classes
  q = new Particle[128];
  for(int i = 0; i < q.length; i++){
    q[i] = new Particle(width, height, 5+10);
  }
  
  e = new Particle2[128];
  for(int i = 0; i < e.length; i++){
    e[i] = new Particle2(0, 0, 5+10);  
  }
  
  w = new Particle1[128];
  for(int i = 0; i < w.length; i++){
    w[i] = new Particle1(width/2, height/2, 5+10);  
  }
}
void draw(){
  //lines 29-42 updates all class positions in the active canvas
  for(int i = 0; i < q.length; i++){
    q[i].display();
    q[i].update();
  }
  
  for(int i = 0; i < e.length; i++){
    e[i].display();
    e[i].update();
  }
  
  for(int i = 0; i < w.length; i++){
    w[i].display();
    w[i].update();
  } 
}  

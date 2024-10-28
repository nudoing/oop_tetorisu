

Player player = new Player();
Field f = new Field(50,50,player);

void setup(){
  
  size(800,900);
  
}

void draw(){
  background(255);
  f.render();
  
}


void keyPressed(){
  
  player.turnR();
  
}

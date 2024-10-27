
Field f = new Field(50,50);

Mino m = new Mino();

void setup(){
  
  size(800,900);
  
}

void draw(){
  background(255);
  f.render();
  
  translate(100,100);
  m.render(40);
}

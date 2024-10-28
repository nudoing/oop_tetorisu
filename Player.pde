
class Player{
  
  Mino mino;
  float posX=5;
  float posY=2;
  
  Player(){
    mino = new Mino();
  }
  
  
  void render(){
    mino.render();
  }
  
  
  
  void moveR(){
    
  }
  
  
  void moveL(){
  }
  
  void turnR(){
    mino.turnR();
  }
  
  
}

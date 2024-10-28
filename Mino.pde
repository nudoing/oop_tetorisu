

class Mino{
  
  ArrayList<TileInMino> tiles = new ArrayList<>();
  
  
  Mino(){
    
    int iro = (int)random(360);
    
    tiles.add(new TileInMino(-1,0,iro));
    tiles.add(new TileInMino(0,0,iro));
    tiles.add(new TileInMino(1,0,iro));
    tiles.add(new TileInMino(1,1,iro));
    
  }
  
  
  void render(){
    
    for(TileInMino t:tiles){
      push();
      t.render();
      
      pop();
      
    }
    
  }
  
  
  void turnR(){
    
    for(TileInMino t:tiles){
      t.turnR();
    }
    
  }
  
  
}

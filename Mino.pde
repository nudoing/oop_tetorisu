

class Mino{
  
  ArrayList<TileInMino> tiles = new ArrayList<>();
  
  
  Mino(){
    
    int iro = (int)random(360);
    
    tiles.add(new TileInMino(-1,0,iro));
    tiles.add(new TileInMino(0,0,iro));
    tiles.add(new TileInMino(1,0,iro));
    tiles.add(new TileInMino(1,1,iro));
    
  }
  
  
  void render(float tile_size){
    
    rotate(TAU/4);
    
    for(TileInMino t:tiles){
      push();
      t.render(tile_size);
      
      pop();
      
    }
    
    
    
    
  }
  
}

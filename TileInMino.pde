
class TileInMino {
  
  PVector pos;
  
  Tile tile;
  
  
  TileInMino(float _x,float _y,int iro){
    pos = new PVector(_x,_y);
    tile = new Tile(iro);
  }
  
  
  void render(){
    push();
    
    translate(pos.x*TILE_SIZE,pos.y*TILE_SIZE);
    
    tile.render();
    pop();
  }
  
  
  void turnR(){
    pos.rotate(HALF_PI);
  }
  
}

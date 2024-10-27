
class TileInMino {
  
  PVector pos;
  
  Tile tile;
  
  
  TileInMino(float _x,float _y,int iro){
    pos = new PVector(_x,_y);
    tile = new Tile(iro);
  }
  
  
  void render(float tile_size){
    push();
    
    translate(pos.x*tile_size,pos.y*tile_size);
    
    tile.render(tile_size);
    pop();
  }
  
}

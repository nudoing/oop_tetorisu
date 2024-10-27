//フィールド上の横一列のやつ
class Line{
  
  private Tile[] tiles;
  
  Line(int max_col){
    tiles = new Tile[max_col];
  }
  
  void setTile(int x,Tile t){
    if(x<0 || tiles.length<=x) return;
    tiles[x] = t;
  }
  
  
  Tile getTile(int x){
    if(x<0 || tiles.length<=x) return null;
    return tiles[x];
  }
  
  void render(float tile_size){
    
    for(int x=0;x<tiles.length;x++){
      push();
      translate(x*tile_size,0);
      if(tiles[x]!=null){
        tiles[x].render(tile_size);
      }
      pop();
    }
    
  }
  
}

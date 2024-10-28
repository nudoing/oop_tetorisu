
class Field{
  
  public Player player;
  
  private int MAX_ROW = 20;
  private int MAX_COL = 10;
  
  private float off_x;
  private float off_y;
  
  private ArrayList<Line> lines = new ArrayList<>();
  
  
  Field(float offset_x,float offset_y,Player p){
    player = p;
    off_x = offset_x;
    off_y = offset_y;
    
    Line l = new Line(MAX_COL);
    l.setTile(5,new Tile(50));
    lines.add(l);
    Line l2 = new Line(MAX_COL);
    l2.setTile(0,new Tile(50));
    
  }
  
  
  void render(){
    
    push();
    
    //オフセット
    translate(off_x,off_y);
    
    //外枠の描画
    rectMode(CORNER);
    strokeWeight(4);
    noFill();
    rect(-2,-2,MAX_COL*TILE_SIZE+3,MAX_ROW*TILE_SIZE+3);
    noStroke();
    fill(200,200,200,200);
    rect(0,0,MAX_COL*TILE_SIZE,MAX_ROW*TILE_SIZE);
    
    //単位をブロック単位に変更
    
    //scale(TILE_SIZE);
    
    //オフセットをブロック用にすこしずらす
    translate(TILE_SIZE/2,TILE_SIZE/2);
    
    //各ラインの描画
    push();
    translate(0,(MAX_ROW-1)*TILE_SIZE);
    for(Line l:lines){
      l.render();
      translate(0,-TILE_SIZE);
    }
    pop();
    
    //プレイヤー描画
    player.render();
    
    
    pop();
  }
  
}

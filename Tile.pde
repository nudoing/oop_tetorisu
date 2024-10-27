//かべのタイル
Tile TILE_KABE = new Tile(0);
//１マスを表現するやつ
class Tile{  
  private int iro;
  
  Tile(int iro){
    this.iro = iro;
  }
  
  
  void render(float tile_size){
    float s = tile_size/2;
    push();
    
    colorMode(HSB,360,100,100);
    noStroke();
    
    fill(iro,40,90);
    triangle(-s,-s,s,-s,-s,s);

    fill(iro,90,40);
    triangle(s,s,s,-s,-s,s);

    rectMode(CENTER);
    fill(iro,90,90);    
    rect(0,0,tile_size*0.6,tile_size*0.6);
    
    pop();
  }
  
  
  
  
}

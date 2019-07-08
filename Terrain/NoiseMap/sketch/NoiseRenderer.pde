class NoiseRenderer {
  NoiseMap map;
  Terrains terrains;
  int renderMode=0;
  NoiseRenderer(NoiseMap m) {
    map=m;
    terrains=new Terrains();
  }
  void render() {
    background(0);
    for (int y=0; y<map.n.length; y++) {
      for (int x=0; x<map.n[0].length; x++) {
        switch(renderMode){
         case 1:
           for(int i=0;i<terrains.terrain.length;i++){
             if(terrains.terrain[i].level>=map.n[x][y]){
               stroke(terrains.terrain[i].col);
               break;
             }
           }
         break;
         default:
          stroke(map.n[x][y]*255);
         break;
        }
        point(x, y);
      }
    }
  }
}

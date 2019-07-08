class NoiseMap {

  float [][]n;
  PVector [][]octOffset;
  int w,h,scl,layers;
  float l,persistance;
  NoiseMap(int w, int h, int scl, int layers, float l, float persistance) {
    
    this.n=new float[w][h];
    this.octOffset=new PVector[layers];
    this.w=w;
    this.h=h;
    this.scl=scl;
    this.layers=layers;
    this.l=l;
    this.persistance=persistance;
  }
  void generate(){
    int xoff=w/2;
    int yoff=h/2;
    for (int y=0; y<h; y++) {
      for (int x=0; x<w; x++) {
        n[x][y]=0;
        n[x][y]+=noise((float)(x-xoff)/scl, (float)(y-yoff)/scl);
      }
    }
  }
}

class NoiseMap {

  float [][]n;
  PVector []octOffset;
  int w, h, scl, layers;
  float l, persistance;
  NoiseMap(int w, int h, int scl, int layers, float l, float persistance) {

    this.n=new float[w][h];
    this.octOffset=new PVector[layers];
    for (int i=0; i<layers; i++) {
      octOffset[i]=PVector.random2D().setMag(random(-10000, 10000));
    }
    this.w=w;
    this.h=h;
    this.scl=scl;
    this.layers=layers;
    this.l=l;
    this.persistance=persistance;
  }
  void generate() {
    int xoff=w/2;
    int yoff=h/2;
    for (int y=0; y<h; y++) {
      for (int x=0; x<w; x++) {
        n[x][y]=0;
        float amplitude = 1;
        float frequency = 1;
        int l=0;
        float nx=(float)(x-xoff)/scl+octOffset[l].x;
        float ny=(float)(y-yoff)/scl+octOffset[l].y;
        float nv=noise(nx, ny)*2 -1;
        n[x][y]+=nv*amplitude;
      }
    }
  }
}

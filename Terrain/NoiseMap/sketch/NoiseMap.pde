class NoiseMap {

  float [][]n;
  NoiseMap(int w, int h, int scl, int layers, float l, float persistance) {
    n=new float[w][h];
    for (int y=0; y<h; y++) {
      for (int x=0; x<w; x++) {
        n[x][y]=0;
        n[x][y]+=map(noise(x/scl, y/scl), 0, 1, 0, 255);
      }
    }
  }
}

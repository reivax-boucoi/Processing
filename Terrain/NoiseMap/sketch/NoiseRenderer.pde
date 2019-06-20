class NoiseRenderer {
  NoiseMap map;
  NoiseRenderer(NoiseMap m) {
    map=m;
  }
  void render() {
    background(0);
    for (int y=0; y<map.n.length; y++) {
      for (int x=0; x<map.n[0].length; x++) {
        stroke(map.n[x][y]);
        point(x, y);
      }
    }
  }
}

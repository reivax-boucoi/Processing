class NoiseRenderer {
  NoiseMap map;
  NoiseRenderer(NoiseMap m) {
    map=m;
  }
  void render() {
    print(map.n.length);
    for (int y=0; y<map.n.length; y++) {
      for (int x=0; x<map.n[0].length; x++) {
        point(x, y, map.n[x][y]);
      }
    }
  }
}

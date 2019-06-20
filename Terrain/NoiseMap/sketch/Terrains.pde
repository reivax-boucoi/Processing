class Terrains {
  Terrain []t;
  Terrains() {
    t=new Terrain[4];
    t[0]=new Terrain(
  }
}
class Terrain {
  String name;
  float level;
  color col;
  Terrain(String n, float l, color c){
    name=n;
    level=l;
    col=c;
  }
}

class Terrains {
  Terrain []terrain;
  Terrains() {
    terrain=new Terrain[5];
    terrain[0]=new Terrain("sea",.3,#07528E);
    terrain[1]=new Terrain("sand",.35,#FBD48A);
    terrain[2]=new Terrain("earth",.6,#627E0F);
    terrain[3]=new Terrain("hill",.85,#4F4E3C);
    terrain[4]=new Terrain("peak",1,#FEF9F5);
    
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

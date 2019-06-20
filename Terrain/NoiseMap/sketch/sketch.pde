NoiseMap nm;
NoiseRenderer nr;

void setup(){
  size(400,400);
  nm=new NoiseMap(width,height,250,1,2,0.5);
  nr=new NoiseRenderer(nm);
}

void draw(){
  nr.render();
}

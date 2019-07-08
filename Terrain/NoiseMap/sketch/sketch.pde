import controlP5.*;

ControlP5 cp5;
int scale=250;
NoiseMap nm;
NoiseRenderer nr;

void setup() {
  size(640, 480);
  cp5 = new ControlP5(this);
  cp5.addSlider("scale").setPosition(0, 0).setRange(10, 1000);
  nm=new NoiseMap(width, height, scale, 1, 2, 0.5);
  nr=new NoiseRenderer(nm);
  nr.render();
}

void draw() {
}

void mouseReleased(){
    if (mouseY>100) {
    nr.renderMode=1-nr.renderMode;
  }else{
    nr.map.scl=scale;
  }
    nr.render();
}

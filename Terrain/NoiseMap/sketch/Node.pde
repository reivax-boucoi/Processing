class Node {
  PVector pos;
  
  Node(){
  pos=new PVector(100,100);
  }
  Node(int x, int y) {
  pos=new PVector(x,y);
  }
  void show(boolean anchor) {
    stroke(250);
    if(anchor){
      fill(255,0,0);
    }else{
      fill(0);
    }
    ellipse(pos.x, pos.y, 10, 10);
  }
}

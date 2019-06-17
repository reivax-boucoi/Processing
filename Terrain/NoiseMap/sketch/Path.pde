class Path {
  ArrayList<Node> nodes ;
  Path() {
    nodes = new ArrayList<Node>();
  }
  void add(Node a) {
    if (nodes.size()<4) {
      nodes.add(a);
    } else {
      Node pa=nodes.get(nodes.size()-1);
      Node pc=nodes.get(nodes.size()-2);
      PVector nc=PVector.sub(pa.pos, pc.pos);
      nc.add(pa.pos);
      Node c=new Node((int)nc.x, (int)nc.y);
      nodes.add(c);
      PVector nc1=PVector.lerp(c.pos, a.pos, 0.5);
      Node c1=new Node((int)nc1.x, (int)nc1.y);
      nodes.add(c1);
      nodes.add(a);
    }
  }
  void removeNode(int i){
   if(i%3==0){
     
   }
  }
  void moveNode(int i, PVector p) {
    Node n=nodes.get(i);
    PVector dp=PVector.sub(p, n.pos);
    n.pos.set(p);
    if (i%3==0) {
      if (i-1>=0) {
        Node c=nodes.get(i-1);
        c.pos.add(dp);
      }
      if (i+1<nodes.size()) {
        Node c=nodes.get(i+1);
        c.pos.add(dp);
      }
    } else {
      if ((i+1)%3==0) {
        if ((i+2)<nodes.size()) {
          Node c=nodes.get(i+2);
          c.pos.sub(dp);
        }
      } else {
        if ((i-2)>=0) {
          Node c=nodes.get(i-2);
          c.pos.sub(dp);
        }
      }
    }
  }
  void show() {
    for (int i=0; i<nodes.size(); i++) {
      Node n=nodes.get(i);
      if (i%3==0) {
        if (i+3<nodes.size()) {
          Node a=nodes.get(i+3);
          Node b=nodes.get(i+2);
          Node c=nodes.get(i+1);
          noFill();
          stroke(100);
          strokeWeight(1);
          line(a.pos.x, a.pos.y, b.pos.x, b.pos.y);
          line(n.pos.x, n.pos.y, c.pos.x, c.pos.y);

          stroke(255);
          strokeWeight(2);
          bezier(a.pos.x, a.pos.y, b.pos.x, b.pos.y, c.pos.x, c.pos.y, n.pos.x, n.pos.y);
        }
        n.show(true);
      } else {
        n.show(false);
      }
    }
  }
}

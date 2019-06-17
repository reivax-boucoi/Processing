Path p;
int currentNode;
void setup() {
  size(400, 400); 
  p=new Path();
  currentNode=-1;
}

void draw() {
  background(0);
  p.show();
}

void mousePressed() {
  if (currentNode<0) {
    Node n=new Node(mouseX, mouseY);
    p.add(n);
  }
}

void mouseMoved() {
  currentNode=-1;
  for (int i=0; i<p.nodes.size(); i++) {
    Node n=p.nodes.get(i);
    if (dist(mouseX, mouseY, n.pos.x, n.pos.y)<5) {
      currentNode=i;
    }
  }
  if (currentNode>=0) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
void mouseDragged() {
  if (currentNode>=0) {
    PVector m=new PVector(mouseX, mouseY);
    p.moveNode(currentNode, m);
  }
}

void keyPressed() {
  if (keyCode==127 && currentNode>=0) {
    path.removeNode(currentNode);
  }
}

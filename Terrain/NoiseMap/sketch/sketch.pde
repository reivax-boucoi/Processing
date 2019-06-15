void setup(){
 size(400,400); 
}

void draw(){
  background(0);
  for(int x=0;x<width;x++){
   for(int y=0;y<height;y++){
     stroke(noise(x,y)*256);
    point(x,y); 
   }
  }
}

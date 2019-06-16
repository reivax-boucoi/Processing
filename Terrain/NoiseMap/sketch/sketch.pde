float scale=1000;
float t=0;
void setup(){
 size(400,400); 
}

void draw(){
  background(0);
  for(int x=0;x<width;x++){
   for(int y=0;y<height;y++){
     stroke(noise(x/scale,y/scale,t)*256);
    point(x,y); 
   }
  }
  t+=0.1;
}

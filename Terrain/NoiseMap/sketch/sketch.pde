float scale=100;
float t=0;
void setup(){
 size(400,400); 
}

void draw(){
  for(int x=0;x<width;x++){
   for(int y=0;y<height;y++){
     stroke(noise(x/scale,y/scale,t)*256);
    point(x,y); 
   }
  }
  t+=0.01;
}

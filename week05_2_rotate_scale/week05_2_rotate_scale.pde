void setup()
{
  size(400,400,P3D); //Processing 3D的功能
}

void draw()
{
  background(#FFFFF2);

  pushMatrix();
    translate(mouseX,mouseY);
      rotateY(radians(mouseX));
      rotateX(radians(mouseY));
     fill(0,255,0);   
     box(100);
    
     
       scale(2);
       noFill();
       box(100);
  popMatrix();
    
}

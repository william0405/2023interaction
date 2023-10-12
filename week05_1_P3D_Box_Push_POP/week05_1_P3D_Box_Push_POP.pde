void setup()
{
  size(400,400,P3D); //Processing 3D的功能
}

void draw()
{
  background(#FFFFF2);

  pushMatrix();
    translate(mouseX,mouseY);
    box(100);
  popMatrix();
  
  
}

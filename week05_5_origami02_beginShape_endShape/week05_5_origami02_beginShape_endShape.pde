ArrayList<PVector>pt;
void setup()
{
  size(400,400,P3D);
  pt = new ArrayList<PVector>();
}
void draw()
{
  background(#FFFFF2);
  for(PVector practice : pt)
  {
    ellipse(practice.x,practice.y,10,10);
  }
  
      beginShape();
      for(PVector practice : pt)
      {
        vertex(practice.x,practice.y,10,10);
      }
      endShape();    
}
void mousePressed()
{
   
      pt.add(new PVector(mouseX,mouseY));
  
}
  

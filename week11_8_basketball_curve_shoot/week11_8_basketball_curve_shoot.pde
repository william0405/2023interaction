PImage machine;
void setup()
{
  size(400,400);
  machine = loadImage("basket.jpg");
}
void draw()
{
  image(machine,0,0);
  if(mousePressed)
  {
    fill(255);ellipse(posX,posY,20,20);
    line(posX,posY,mouseX,mouseY);
  }
  fill(#FFA652);ellipse(mouseX,mouseY,20,20);
}
float posX=-100 , posY=-100;
void mousePressed()
{
  posX=mouseX;
  posY=mouseY;
}

PImage machine;
boolean gameOver = false;
void setup()
{
  size(400,400);
  machine = loadImage("basket.jpg");
}
void keyPressed()
{
  gameOver=true;
}
void draw()
{
  background(255);
  image(machine,0,0);
  if(flying)
  {
   if(!gameOver)
    {
       x+=vx;
       y+=vy;
      vy+=0.98;
    }
   
  }
  else
    {
      x=mouseX;
      y=mouseY;
      
      if(mousePressed)
      {
        fill(255);ellipse(posX,posY,20,20);
        line(posX,posY,x,y);
      }
    }
   fill(#FFA652);ellipse(x,y,20,20);
    
}

boolean flying = false;
float x, y, vx ,vy;
float posX=-100 , posY=-100;
void mousePressed()
{
  posX=mouseX;
  posY=mouseY;
  flying = false;
}

void mouseReleased()
{
  vx = posX-mouseX;
  vy = posY-mouseY;
  flying = true;
}

PImage img,imgBox;
void setup()
{
  size(600,600);
  img = loadImage("princess.png");
  imgBox = loadImage("imageBox.png");
}
void draw()
{
  imageMode(CENTER);
  if(mousePressed)
  {
    image(imgBox,mouseX,mouseY,300,300);
  }else
  {
    image(img,300,300,220,300);
  }
}

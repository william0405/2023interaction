PImage img ;
void setup()
{
    size(600,600);
    img = loadImage("ground.jpg");

}
void draw()
{
  background(#FFFFF2);
  image(img,mouseX,mouseY,200,200);
  
}

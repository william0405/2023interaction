float [] HLE = {-1042, -3479.7 , 1003.7 , -1669 , -1639.6 , -14219 , 3655.1 , -4917 , 9363.2 , -4271.8 ,-24 ,681};
int N=12;
void setup()
{
  size(500,500);  
  frameRate(10);
}
void draw()
{
  float dx = HLE[frameCount%N]/1000;
  background(#FFFFF2);
  
  rect(200+dx,200+dx,100,100);
  
  
}

//碰撞偵測: 利用if判斷，看有沒有碰到地板 Mario vs. Pikachu
//牛頓力學 (1)靜者恆靜、動者恆動 (2)f=m*a 位置、速度、加速度
void setup()
{
  size(400, 400);
}
float marioX=50, marioY =250, vx=0, vy=0;
boolean flying = false ;
void draw()
{
  background(93, 147, 253);

  marioX+=vx;
  if (flying)
  {
    marioY+=vy;
    vy+=0.98;
  }
  fill(255, 0, 0);
  ellipse(marioX, marioY, 15, 25);
  fill(229, 119, 42);
  rect(0, 260, 400, 150);
  fill(229, 119, 42);
  rect(200, 150, 20, 20);
  
  if (hitBox(200, 150, 20, 20))
  {
    if(vy>0)
    {
      marioY = 150-10;
      flying = false;
    }
    else
    {
     vy=0;
      marioY = 150+20+10;
    }
   
    
  }
  
  if (marioY>=250)
  {
    marioY=250;
    flying = false;
  }
  if (marioX <=0)
  {
    marioX=400;
  } else if (marioX>=400)
  {
    marioX=0;
  }
}
boolean hitBox(int x, int y, int w, int h)
{
  if (x-7<marioX && marioX<x+w+7 && y-10<marioY && marioY<y+h+10)
  {
    return true;    
  }
  return false;
}
void keyPressed()
{
  if (keyCode ==RIGHT)
  {
    vx=2;
  }
  if (keyCode ==LEFT)
  {
    vx=-2;
  }
  if (keyCode==UP && flying == false)
  {
    vy=-20;
    flying = true;
  }
}
void keyReleased()
{
  if (keyCode == LEFT|| keyCode == RIGHT)
  {
    vx=0;
  }
}

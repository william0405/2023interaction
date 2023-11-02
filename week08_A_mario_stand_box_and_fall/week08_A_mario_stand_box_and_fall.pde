//碰撞偵測: 利用if判斷，看有沒有碰到地板 Mario vs. Pikachu
//牛頓力學 (1)靜者恆靜、動者恆動 (2)f=m*a 位置、速度、加速度
void setup()
{
  size(400, 400);
}
float marioX=50, marioY =250, vx=0, vy=0;
boolean flying = false , stand_box = false ;
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
  
  drawAndTextBox(100, 150, 20, 20);
   drawAndTextBox(200, 150, 20, 20);
    drawAndTextBox(300, 150, 20, 20);
}
void drawAndTextBox(int x,int y,int w,int h)
{
  fill(229, 119, 42);
  rect(x,y,w,h);
  
  if (hitBox(x,y,w,h))
  {
    if(vy>0)
    {
      marioY = y-10;
      flying = false;
      stand_box = true;
    }
    else
    {
     vy=0;
      marioY = y+h+10;
    }
    
  }

   if(stand_box ==true && flying ==false&& leaveBox(x,y,w,h))
   {
       stand_box = false;
       flying = true;
       vy=0;
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
boolean leaveBox(int x, int y, int w ,int h)
{
  if(x-7 > marioX || marioX>x+w+7)
  {
    return true;
  }
  else
  {
  return false;
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
    stand_box = false;//現在有兩個變數，都要處理!
  }
}
void keyReleased()
{
  if (keyCode == LEFT|| keyCode == RIGHT)
  {
    vx=0;
  }
}

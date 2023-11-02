//碰撞偵測: 利用if判斷，看有沒有碰到地板 Mario vs. Pikachu
//牛頓力學 (1)靜者恆靜、動者恆動 (2)f=m*a 位置、速度、加速度
void setup()
{
  size(400,400);
}
float x=50 , y =250 , vx=2 , vy=-20;
float jumpForce = 0.5;
void draw()
{
  x+=vx;
  y+=vy;
  vy+=0.98;//重力加速度
  if(y>350) //利用if判斷，看有沒有到地板 y=350位置
  {
    y=350;
    vy=-vy*jumpForce;
    vx = vx*0.8;
    
  }
 
    ellipse(x,y,10,10);
  
}

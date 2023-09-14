//互動模式 Interactive Mode(Active Mode)
void setup()//設定
{
  size(500,500);//視窗大小(寬，高)
  background(255);//(背景白色)
}
void draw()//畫圖，每秒畫60次
{
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);//畫線
}

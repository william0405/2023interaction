//互動模式 Interactive Mode(Active Mode)
void setup()//設定
{
  size(500,500);//視窗大小(寬，高)
  background(#04A2DE);//(背景顏色)
}
void draw()//畫圖，每秒畫60次
{
  ellipse(mouseX,mouseY,8,8);
}

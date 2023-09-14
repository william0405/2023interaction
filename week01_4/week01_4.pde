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
void keyPressed()
{
  if(key=='1')stroke(#04A2DE);//如果按下數字1 筆觸是藍色
  if(key=='2')stroke(0,255,0);//如果按下數字2 筆觸是綠色
  if(key=='3')stroke(0,0,255);//如果按下數字3 筆觸是綠色
  if(key=='s'||key=='S')save("output.png");
}

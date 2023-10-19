import processing.sound.*;
SoundFile dadada,begin,over;
void setup()
{
  size(300,300);
  dadada = new SoundFile(this,"test.mp3");
  begin = new SoundFile(this,"Begin.mp3");
  over = new SoundFile(this,"over.mp3");
}
void draw()
{
  text("press 1 2 3",100,100);
}
void keyPressed()
{
  if(key == '1' )
  {
    begin.play();
    print("開始");
  }
  if(key=='2')
  {
    dadada.play();
    print("中間");
  }
  if(key=='3')
  {
    over.play();
    print("結束");
  }
}

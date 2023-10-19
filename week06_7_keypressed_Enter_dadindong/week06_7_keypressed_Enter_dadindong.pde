import processing.sound.*;
SoundFile begin,middle,end;
void setup()
{
  size(800,400);
  textSize(64);
  begin = new SoundFile(this,"Begin.mp3");
  middle = new SoundFile(this,"test.mp3");
  end = new SoundFile(this,"over.mp3");
  
}
String line = ""; 
void draw()
{
  background(0);
  text("Input: "+line,50,100);
}
void keyPressed()
{
  if(key>='A' && key <='Z')
  {
    line += key; middle.play();
    print("打字");
  }
  if(key>= 'a' && key<='z')
  {
    line += key; middle.play();
    print("打字");
  }
  if(key == BACKSPACE && line.length()>0)
  {
    line = line.substring(0,line.length()-1);
    begin.play();
    print("倒退中");
  }
  if(key == ENTER)
  {
    end.play();
    print("結束");
  }
}

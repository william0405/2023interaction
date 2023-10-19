import processing.sound.*;
SoundFile clickMusic;
void setup()
{
  size(300,300);
  clickMusic = new SoundFile(this,"test.mp3");
  clickMusic.play();
  print("HI");
}
void draw()
{

}

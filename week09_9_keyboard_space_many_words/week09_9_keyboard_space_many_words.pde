PImage img;
int [][]pos = {{94,490},{246,524},{179,524},{160,491},{153,456},{195,491},{229,489},{264,490},{322,457},{299,490},{334,491},{368,491},{314,524},{281,524},{357,456},{391,457},{82,456},{186,455},{125,489},{222,458},{289,458},{213,524},{117,456},{145,524},{253,458},{109,525}};
void setup()
{
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);
}

void draw()
{
  background(#FFFFF2);
  image(img,0,334);  
  fill(255,0,0,128);
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++)
  {
    if(ID<typing.length() && typing.charAt(0)-'a'==i)rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }
  textSize(50);
  fill(0);
 
  text(typing,50,50);
  
  fill(255,0,0);
  if(ID<typing.length())
  {
  text(typed + typing.charAt(ID),50,100);
  }
  fill(0);
  text(typed,50,100);
}
String typing = "printf is a function";
String typed = "";
int ID =0;
boolean[] pressed = new boolean[26];// Java的陣列宣告，0 or false
void keyPressed()
{
  if(ID<typing.length() && key==typing.charAt(ID))
  {
    if(key>='a' && key<='z')
    {
      pressed[key-'a']=true;
      typed += key;
      ID++;
    }
    else if(key==' ')
    {
      typed +=key;
      ID ++ ;
    }
  }
  else
    {
      background(255,0,0);
    }
}
void keyReleased()
{
  if(key>='a'&& key<='z')pressed[key-'a']=false;
}
void mousePressed()
{
  println(mouseX,mouseY);
}

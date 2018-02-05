Followers[] followers = new Followers[20];
PImage trumpu;
PImage trumph;

void setup()
{
  fullScreen();
  background(255);
  for ( int i = 0; i < followers.length; i ++)
  {
    followers[i] = new Followers();
  }
  trumpu = loadImage("trumpu.png");
  trumpu.resize(100, 100);
  trumph = loadImage("trumph.png");
  trumph.resize(100, 100);
}

void draw()
{
  background(255);
  for (int i = 0; i < followers.length; i++) {
    followers[i].update();
    followers[i].Make();
    followers[i].ReMake();
  }
  image(trumpu, mouseX, mouseY);
  if (key == 'r')
  {
    trumpu = trumph;
  }
}
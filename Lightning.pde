int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0,0,0);
  frameRate(10);
}

void draw()
{
  fill(0,0,0,20);
  rect(0,0,300,300);
  int r = ((int)(Math.random()*255));
  int g = ((int)(Math.random()*255));
  int b = ((int)(Math.random()*255));
  stroke(r,g,b);
  while (endY < 300)
  {
    endX = (int)(startX + ((Math.random()*20)-10));
    endY = (int)(startY + (Math.random()*10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}

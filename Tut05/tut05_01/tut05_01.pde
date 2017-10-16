Circle c;
Circle l;
void setup()
{
  size(300, 300);
  c = new Circle();
  c.setX(100);
  c.setY(100);
  c.setRadius(30);
  l = new Circle(width/2, height/2, 50);
  println(c);
  println(l.toString());
}

void draw()
{
  background(0, 0, 0);
  c.display();
  l.display();
}
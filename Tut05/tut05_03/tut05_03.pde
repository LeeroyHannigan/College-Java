Circle c;
Square s;

void setup()
{
  size(300, 300);
  c = new Circle(100, 100, 30); 
  println(c);
  println("Area: " +c.getArea());
  s = new Square(100, 200, 30);
  println(s.getPerimeter());  // should print 240
  println(s);
}

void draw()
{
  background(0, 0, 0);
  c.display();
  s.display();
}
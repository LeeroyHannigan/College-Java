Moon moon;
Moon moon2;

void setup()
{
  size(800, 800);  

  moon = new Moon("Moon", 20, 100, 2, 400);
  println(moon); // calls toString()
  moon.setName("Earth Moon");
  println(moon);
  
  moon2 = new Moon("Moon 2", 30,15, 2,10);
  print(moon2);
  
}

void draw()
{
  background(0, 0, 0);
  translate(width/2, height/2);
  moon.display();
  
  moon2.display();
}
Planet earth;
Moon moon;

void setup()
{
  size(800, 800);  

  // add tester code here - create a planet & moon object, call some of its methods, etc.
  moon = new Moon("moon55", 7.5, 50, 2, 28);
  earth = new Planet("earth", 25, 200, 1, moon);

  println(earth.getMoon().getName());
  println(earth.getMoon().getOrbitalPeriod());
  println(earth.getMoonName());
  println(earth.getMoonRadius());
}

void draw()
{
  background(0, 0, 0);
  fill(255, 255, 0);
  ellipse(width/2, height/2, 100, 100);  
  translate(width/2, height/2);

  earth.display();
}
public class Square extends Shape
{  
  public Square(int x, int y, int radius)
  {
    super(x, y, radius);
  }

  public void display()
  {
    rect(getX(), getY(), getRadius()*2, getRadius());
  }
  public int getPerimeter()
  {
    return (4*(getRadius()*2));
  }
  public String toString()
  {
    return "Square: length= "+ getRadius()*2;
  }
}
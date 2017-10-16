public class Point extends Shot
{
  public Point(int x, int y, color colour)
  {
    super(x, y, colour);
  }
  public void display()
  {
    fill(getColour());
    ellipse(getX(), getY(), Shot.SIZE, Shot.SIZE);
  }
  public String toString()
  {
    return getColour()==Shot.MISS? "Point:@("+getX()+","+getY()+") missed" : "Point:@("+getX()+","+getY()+") scored";
  }
}
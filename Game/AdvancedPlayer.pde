public class AdvancedPlayer extends Player
{


  public AdvancedPlayer(Location location)
  {
    super(location);
  }


  @Override
    public void move(int keycode)
  {
    //println("player keycode="+keycode);
    switch(keycode)
    {
    case World.KEY_UP:    
      super.getLocation().changeY(-1);
      if (super.getLocation().getY()<World.MIN_CELL)
        super.getLocation().setY(World.MAX_CELL);
      break;

      // (Q.2)
    case World.KEY_DOWN:
      super.getLocation().changeY(+1);
      if (super.getLocation().getY()>World.MAX_CELL)
        super.getLocation().setY(World.MIN_CELL);
      break;

    case World.KEY_RIGHT:
      super.getLocation().changeX(+1);
      if (super.getLocation().getX()>World.MAX_CELL)
        super.getLocation().setX(World.MIN_CELL);
      break;

    case World.KEY_LEFT:
      super.getLocation().changeX(-1);
      if (super.getLocation().getX()<World.MIN_CELL)
        super.getLocation().setX(World.MAX_CELL);
      break;


      //NW
    case World.KEY_NW:
      super.getLocation().changeX(-1);
      super.getLocation().changeY(-1);
      if (super.getLocation().getX()<World.MIN_CELL)
        super.getLocation().setX(World.MAX_CELL);
      if (super.getLocation().getY()<World.MIN_CELL)
        super.getLocation().setY(World.MAX_CELL);
      if (super.getLocation().getX()>World.MAX_CELL)
        super.getLocation().setX(World.MIN_CELL);
      if (super.getLocation().getY()>World.MAX_CELL)
        super.getLocation().setY(World.MIN_CELL);
      break;

      //NE
    case World.KEY_NE:
       super.getLocation().changeX(+1);
      super.getLocation().changeY(-1);
      if (super.getLocation().getX()<World.MIN_CELL)
        super.getLocation().setX(World.MAX_CELL);
      if (super.getLocation().getY()<World.MIN_CELL)
        super.getLocation().setY(World.MAX_CELL);
      if (super.getLocation().getX()>World.MAX_CELL)
        super.getLocation().setX(World.MIN_CELL);
      if (super.getLocation().getY()>World.MAX_CELL)
        super.getLocation().setY(World.MIN_CELL);
      break;

      //SW
    case World.KEY_SW:
      super.getLocation().changeX(-1);
      super.getLocation().changeY(+1);
      if (super.getLocation().getX()<World.MIN_CELL)
        super.getLocation().setX(World.MAX_CELL);
      if (super.getLocation().getY()<World.MIN_CELL)
        super.getLocation().setY(World.MAX_CELL);
      if (super.getLocation().getX()>World.MAX_CELL)
        super.getLocation().setX(World.MIN_CELL);
      if (super.getLocation().getY()>World.MAX_CELL)
        super.getLocation().setY(World.MIN_CELL);
      break;


      //SE
    case World.KEY_SE:
      super.getLocation().changeX(+1);
      super.getLocation().changeY(+1);
      if (super.getLocation().getX()<World.MIN_CELL)
        super.getLocation().setX(World.MAX_CELL);
      if (super.getLocation().getY()<World.MIN_CELL)
        super.getLocation().setY(World.MAX_CELL);
      if (super.getLocation().getX()>World.MAX_CELL)
        super.getLocation().setX(World.MIN_CELL);
      if (super.getLocation().getY()>World.MAX_CELL)
        super.getLocation().setY(World.MIN_CELL);
      break;

    }
  }
}
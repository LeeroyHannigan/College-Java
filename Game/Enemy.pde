/**
 * The Enemy class encapsulates the notion of an enemy having
 * a number (for display), a location and a shooting range.
 * The enemy can move can attempt to move in a random direction and
 * can "shoot" the player if he is in range.
 */

public class Enemy extends GameCharacter
{
  private int enemyNumber; //useful to identify the enemy
  //private Location location;

  public Enemy(int enemyNumber, Location location) 
  {
    this.enemyNumber = enemyNumber;
    super.location = location;
  }

  public int getEnemyNumber() 
  {
    return enemyNumber;
  }
 /* public Location getLocation() 
  {
    return super.location;
  }
  */
  
  /**
   * Move the enemy in a random direction by one position, if possible
   * @return whether the move was possible or not.
   */
  public void move() 
  {
    int direction = (int)random(World.KEY_LEFT,World.KEY_DOWN);

    switch(direction)
    {
    case World.KEY_UP:    
      super.location.changeY(-1);
      if (super.location.getY()<World.MIN_CELL)
        super.location.setY(World.MAX_CELL);
      break;
      
    // (Q.3)
     case World.KEY_DOWN:
      super.location.changeY(+1);
      if (super.location.getY()>World.MAX_CELL)
        super.location.setY(World.MIN_CELL);
      break;

    case World.KEY_RIGHT:
      super.location.changeX(+1);
      if (super.location.getX()>World.MAX_CELL)
        super.location.setX(World.MIN_CELL);
      break;
      
      
      case World.KEY_LEFT:
      super.location.changeX(-1);
      if (super.location.getX()<World.MIN_CELL)
        super.location.setX(World.MAX_CELL);
      break;
    
    }
    println("Enemy:"+getEnemyNumber()+super.location);    
  }

  public boolean caught(Player player) 
  {
    if(this.getLocation().toString().equals(player.getLocation().toString()))
      return true;
    else
      return false;
  }
}
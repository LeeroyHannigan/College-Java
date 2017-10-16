public class Dog extends Animal 
{
  private String hairColour;
  public Dog() 
  {
    super();
    hairColour="Black";
  }

  public void bark() 
  {
    println("woof!");
  }

  public void eat()
  {
    // Call eat() from Animal
    super.eat();  

    // Add code for how a dog specifically eats
    println("Dog: eating...");
  }

  public void display()
  {
    PImage img = loadImage("images/dog.png");
    image(img, width/2, 0);
  }

  public String toString()
  {
    return "Dog: age=" + getAge() + ";\nhair colour= " + getHairColour();
  }
  public String getHairColour()
  {
    return hairColour;
  }
  public void setHairColour(String hairColour)
  {
    this.hairColour=hairColour;
  }
} 
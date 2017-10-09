import java.util.ArrayList;
class Cards
{
  private final int NO_OF_CARDS=5;
  private final int MAX_CARDS=52;
  ArrayList<Integer> deck;
  ArrayList<Integer>selection;
  int cardValue;

  public Cards()
  {
    //Create deck
    deck=new ArrayList<Integer>();
    //Create selection deck
    selection=new ArrayList<Integer>();
  }

  void deal()
  {
    //Populate selection deck
    for (int x=1; x<=MAX_CARDS; x++)
      selection.add(new Integer(x));

    //add 5 unique cards to arraylist
    for (int i=1; i<=NO_OF_CARDS; i++)
    {
      cardValue = (int)random(0, selection.size());//Random number between 1 and the size of the selection deck
      deck.add(new Integer(selection.get(cardValue)));//add card from selection deck to display deck
      selection.remove(cardValue);//remove card from selection deck so cannot be duplicated
    }
  }

  void display()
  {
    PImage cardImage;    // image
    int imageWidth=71;
    for (int i=0; i<deck.size(); i++)
    {
      cardImage = loadImage("images/"+deck.get(i)+".png"); // load card image
      image(cardImage, imageWidth*i, 0);                // display card image on window
    }
  }
}
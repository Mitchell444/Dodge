public class Player {
  private boolean rActive;
  private int x,y;
  private PVector pos;
  private int hp;
  private final int SIZE = 40;
  
  public Player(int x, int y){
    pos = new PVector(mouseX,mouseY);
    hp = 1;
    //this.x = x;
    //this.y = y;
  }
  
  public void show(){
   circle(mouseX,mouseY,SIZE); 
  }
  
  public void collides(Enemy e){
    double dist = PVector.sub(this.pos,e.pos).mag();
    if (dist <= this.SIZE / 2 + e.SIZE / 2){
     hp--;
      if(hp <=0){
       youLose();
       playAgain();
       rActive = true;
      }
      System.out.println("HP:  " +hp);
    }
  }
  
  private void youLose(){
   textAlign(CENTER, CENTER);
   textSize(48);
   text("YOU LOSE!", width/2, height/2);
   noLoop();
  }

  private void move(){
    pos.x = mouseX;
    pos.y = mouseY;
  }
  
  private void playAgain(){
   textAlign(CENTER, CENTER);
   textSize(48);
   fill(255);
   rect(275,130,250,75);
   fill(0);
   text("Play Again", 400, 160);
   
  }
}

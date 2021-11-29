public class Enemy {
  private PVector pos, vel;
  private final int SIZE = 10, SPEED = 5;
  
  public Enemy(int x, int y){
    pos = new PVector(x,y);
    vel = new PVector(SPEED,SPEED);
  }
}

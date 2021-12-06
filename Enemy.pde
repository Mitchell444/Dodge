public class Enemy {
  private int x, y;
  private double vx, vy, ax, ay;
  private PVector pos, vel;
  private final int SIZE = 10, SPEED = 5;
  
  public Enemy(int x, int y){
    pos = new PVector(x,y);
    vel = new PVector(SPEED,SPEED);
    this.x = x;
    this.y = y;
  }
  
  public void show(){
    rect(pos.x,pos.y,SIZE, SIZE);
    
  }
  
  public void chase(Player p){
  ax = map((x-p.x), 400,-400, SPEED*-0.01, SPEED *0.01); 
  ay = map((y-p.y), 400,-400, SPEED*-0.01, SPEED *0.01);
  vx += ax;
  vy += ay;
  }
  
  public void move(){
    x += vx;
    y += vy;
  }
}

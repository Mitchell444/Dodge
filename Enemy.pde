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
  ax = map((pos.x-p.x), 400,-400, SPEED*-0.005, SPEED *0.005); 
  ay = map((pos.y-p.y), 400,-400, SPEED*-0.005, SPEED*0.005 );
  vx += ax; //<>//
  vy += ay;
  }
  
  public void move(){
    pos.x += vx;
    pos.y += vy;
  }
}

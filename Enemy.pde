public class Enemy {
  private int x, y, hp;
  private boolean active = true;
  private double vx, vy, ax, ay;
  private PVector pos, vel;
  private final int SIZE = 10, SPEED = 5;
  
  public Enemy(int x, int y){
    pos = new PVector(x,y);
    vel = new PVector(SPEED,SPEED);
    this.x = mouseX;
    this.y = mouseY;
    hp = 1;
  }
  
  public void show(){
    rect(pos.x,pos.y,SIZE, SIZE);
    
  }
  
  public void chase(Player p){
  ax = map((pos.x-p.pos.x), 400,-400, SPEED*-0.02, SPEED *0.02); 
  ay = map((pos.y-p.pos.y), 400,-400, SPEED*-0.02, SPEED* 0.02);
  vx += ax; //<>//
  vy += ay;
  }
  
  public void move(){
    pos.x += vx;
    pos.y += vy;
  }
  
  public void collide(Enemy e){
     double dist = PVector.sub(this.pos,e.pos).mag();
    if (dist <= this.SIZE / 2 + e.SIZE / 2){
      hp--;
      System.out.print("TEST CREATURE COLLISION"+ hp);
      if(hp <=0){
        active = false;
      }
    }
}
}

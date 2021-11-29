Player player;

public void setup(){
  player = new Player();
  size(800,800);
}

public void draw(){
  background(200);
  player.show();
}

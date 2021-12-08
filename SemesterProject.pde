Player player;
Enemy[] enemies = new Enemy[20];

public void setup(){
  player = new Player(mouseX, mouseY);
  spawnEnemies();
  size(800,800);
}

public void draw(){
  background(200);
  player.show();
  player.move();
  for(int i = 0; i < enemies.length; i++){
   player.collides(enemies[i]);
   enemies[i].move();
   enemies[i].show(); 
   enemies[i].chase(player);
  }

}
private void spawnEnemies(){
  for (int i = 0; i < enemies.length; i++){
    enemies[i] = new Enemy((int)(Math.random()*800),(int)(Math.random()*800));
  }
}

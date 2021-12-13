Player player;
Enemy[] enemies = new Enemy[30];

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
   if(enemies[i].active){
   enemies[i].show(); 
   }
   enemies[i].chase(player);
   for(int j = 30; j < enemies.length; j++){
     if(enemies[i].active){
     enemies[i].collide(enemies[j]);
     }
   }
  }
}


private void spawnEnemies(){ //<>//
  for (int i = 0; i < enemies.length; i++){
    enemies[i] = new Enemy((int)(Math.random()*800),(int)(Math.random()*800));
  }
} //<>//
  private void mouseClicked(Player p){
    
    if (p.rActive = true && mouseX >= 275 && mouseX <= 525 && mouseY >= 130 && mouseY <= 205){
      p.rActive = false;
      p.hp = 1;
      
    }
  }

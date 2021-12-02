Player player;
Enemy[] enemies = new Enemy[20];

public void setup(){
  player = new Player(mouseX, mouseY);
  size(800,800);
}

public void draw(){
  background(200);
  player.show();
  //for(int i = 0; i < enemies.length; i++){
   //enemies[i].show(); 
  }

//}

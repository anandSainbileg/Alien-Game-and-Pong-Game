class Bomb{
int x;
int y;
int bombSpeed;
Bomb(int xpos, int ypos){
x = xpos;
y = ypos;
bombSpeed = 1;
}
  void draw(){
fill(232, 7, 7);
ellipse(x, y, BombW, BombH);
}
  void move(Alien myAlien[], Bomb myBomb[]){
   y = y + bombSpeed;
   for(int g = 0; g<number; g++){
     boolean offS = offScreen(myBomb[g].y);
      if(offS){
      myBomb[g].x = myAlien[g].x;
      myBomb[g].y = myAlien[g].y;
      }
   }
}
 boolean offScreen(int y){
  boolean off = false;
  if(y >= SCREENY){
  off = true;
  }
    return off;
  }
  void collide(Player myPlayer){
    
    if(x >= myPlayer.xpos && x <= myPlayer.xpos + PADDLEWIDTH && y >= myPlayer.ypos){
    gameOver = 1;
    }
   }
   void stopBomb(){
     if(dead == true){
     x = -100;
     bombSpeed = 0;
    }
   }
   void gameOver(Bomb myBomb[], Alien myAlien[]){
   if(gameOver == 1){
   myFont = loadFont("Arial-Black-18.vlw");
    textFont(myFont); 
    text("GAME OVER", 240, SCREENY/2);
   for(int i = 0; i<number; i++){
    myBomb[i].bombSpeed = 0;
    myAlien[i].speedx = 0;
    myAlien[i].speedy = 0;
     }
    }
   }
  }

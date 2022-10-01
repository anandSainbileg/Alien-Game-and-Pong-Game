int count = 0;
class Alien {
  PImage currentGif;
  int x ;
  int y ;
 int speedx;
 int speedy;
 int sinY;
 int GoY = 0;
  
  Alien(int xpos, int ypos){
  x = xpos; 
  y = ypos;
  speedx = 1;
  speedy = 0;
  currentGif = alienImage;
 
}
 void draw(){
 image(currentGif,x,y);
 }


  void move(){
  if(x == 0){
    speedx = 0;
    speedy = 1;
    GoY++;
  }
  if(GoY == currentGif.height && x == 0){
    GoY = 0;
    speedy = 0;
    speedx = 1;
    
  }
  if(x == SCREENX - currentGif.width){
    speedy = 1;
    GoY++;
    speedx = 0;
    
  }
  if(GoY == currentGif.height && x == SCREENX - currentGif.width){
    GoY = 0;
    speedy = 0;
    speedx = -1;
  }
  if(y == SCREENY - currentGif.height && x == SCREENX - currentGif.width){
  
  speedx = -1;
  speedy = -1;
  }
  if(y == SCREENY - currentGif.height && x == 0){
  
  speedx = 1;
  speedy = -1;
  
  if(y <= 350){
  speedy = speedy * -1;
  }
 }
    x = x + speedx;
    y = y + speedy;
  }
 void moveSin(){
  
  }
void explode(){
currentGif = explosion;
  }
 void stopMove(){
  if(stop == true){
   speedx = 0;
    }
  }
}

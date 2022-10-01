class Bullet{
int xB;
int yB;
int bSpeed;
Bullet(int xpo, int ypo){
xB = xpo;
yB = ypo;
bSpeed = 3;
}
void draw(){
fill(160, 180);
rect(xB, yB, BulletW, BulletH);
}
void move(){
 yB = yB - bSpeed;
if(yB < 0){
 if(mousePressed){
 yB = SCREENY;
 xB = mouseX;
   }
  }
}
void collide(Alien myAlien[]){
  for(int g = 0; g<number; g++){
    if(myAlien[g].x <= xB && myAlien[g].x + 25 >= xB + BulletW 
  && myAlien[g].y <= yB && myAlien[g].y + 25 >= yB){
  myAlien[g].explode();
  stop = true;
  dead = true;
  myAlien[g].stopMove();
  myBomb[g].stopBomb();
      }
    }  
  }
}

Alien myAlien[];
Bullet myBullet[];
Player myPlayer;
Bomb myBomb[];
PImage alienImage, explosion;
void settings(){
size(SCREENX, SCREENY);

}
void setup(){
 frameRate(frame);
 alienImage = loadImage("invader.gif");
 explosion = loadImage("exploding.gif");
 myAlien = new Alien[number];
 myBullet = new Bullet[bullets];
 myPlayer = new Player(SCREENY - MARGIN -PADDLEHEIGHT);
 myBomb = new Bomb[number];
 init_array(myAlien, myBomb);
 initBullet(myBullet);
}
void init_array(Alien myAlien[], Bomb myBomb[]){
for(int i=0; i<myAlien.length; i++){
  myAlien[i] = new Alien(100 + i*25, 100);
  myBomb[i] = new Bomb( 100 + i*25, 100);
}
}

void draw(){
background(0);
drawArray(myAlien);
drawBullet(myBullet);
drawBomb(myBomb);
myPlayer.move(mouseX);
myPlayer.draw();
}

void drawBullet(Bullet myBullet[]){

  for(int g = 0; g<bullets; g++){
myBullet[g].draw();
myBullet[g].move();
myBullet[g].collide(myAlien);
  }
}
void initBullet(Bullet myBullet[]){
 
  for(int f = 0; f<bullets; f++){
   
    myBullet[f] = new Bullet(SCREENX/2, SCREENY);
  }
}
void drawArray(Alien myAlien[]){
for(int i = 0; i < number; i++){
myAlien[i].draw();
myAlien[i].move();
  }
}
  void drawBomb(Bomb myBomb[]){
 for(int i = 0; i<number; i++){
  myBomb[i].move(myAlien, myBomb);
  myBomb[i].draw();
  myBomb[i].collide(myPlayer);
  myBomb[i].gameOver(myBomb, myAlien);
  }
}

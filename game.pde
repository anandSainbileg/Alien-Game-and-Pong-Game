Player thePlayer;
Ball theBall;
Computer theComputer;


 void settings(){
 size(SCREENX, SCREENY);
 }
void setup(){

 thePlayer = new Player(SCREENY - MARGIN -PADDLEHEIGHT);
 theComputer = new Computer(SCREENY - MARGIN -PADDLEHEIGHT);
 theBall = new Ball();
 
 ellipseMode(RADIUS);
 }
 void draw(){
 background(0);
 thePlayer.move(mouseX);
 theComputer.move(i);
 i = x - Rate;
 if(ballY<0 || ballY > 320){
 i = 130;
 }
 theBall.move();
 theBall.collide(thePlayer);
 theBall.collide(theComputer);
 thePlayer.draw();
 theBall.draw();
 theComputer.draw();
 theBall.reset();
}

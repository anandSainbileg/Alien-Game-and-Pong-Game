float x;
float ballY;

class Ball{

int a;
float dx; float dy;
int radius;
color ballColor = color(200, 100, 50);

Ball(){
x = random(SCREENX/4, SCREENX/2);
ballY = random(SCREENY/4, SCREENY/2);
dx = random(1,2); dy = random(1,2);
radius = 5;
}
void move(){

  x = x+dx; ballY = ballY+dy;

}
 void draw(){
fill(ballColor);
ellipse(int(x), int(ballY), radius, radius);
}


  
void collide(Player tp){
  if(x - radius <= 0 ){ 
    dx = -dx;
  }
  else if(x+radius>= SCREENX){
    dx = -dx;
   
  }
  
  if(ballY+radius >= tp.ypos && ballY - radius<tp.ypos+PADDLEHEIGHT
&& x >= tp.xpos && 
x <= tp.xpos+PADDLEWIDTH){println("collided!" + frame);
dy = -dy;
frame = frame + 8;
  if(ballY - radius <= 0) println("1 point for player");
    }
  }
void collide(Computer tp){
  if(ballY+radius >= tp.ypos && ballY - radius<tp.ypos+PADDLEHEIGHT
&& x >= tp.xpos && 
x <= tp.xpos+PADDLEWIDTH){println("collided!");
dy = -dy;
frame = frame + 8;

    }
    
  }
void reset(){
myFont = loadFont("ArialNarrow-Bold-12.vlw");
textFont(myFont);
g = 0;
  
  if(ballY < 0){
    text("my score "+myScore,0,200);
   if(myScore>2){
    text("YOU WIN", 150, 150);
    }
    if(mousePressed){
    x = random(SCREENX/4, SCREENX/2);
ballY = random(SCREENY/4, SCREENY/2);
dx = random(1,2); dy = random(1,2);
radius = 5;
myScore = myScore + 1;
Rate = Rate + 1;

if(myScore == 2){
frame = 130;
}
if(myScore == 3){
frame = 160;
}


println("ur score " + frame +" "+ myScore);
  }
  
  }

  if(ballY>320){
   text("com score "+computerScore,0,100);
    if(computerScore>2){
    text("GAME OVER", 120, 150);
    }
    if(mousePressed){
    Rate = Rate - 1;
 x = random(SCREENX/4, SCREENX/2);
ballY = random(SCREENY/4, SCREENY/2);
dx = random(1,2); dy = random(1,2);
radius = 5;
  computerScore = computerScore + 1;
  frame = 100;
  println("com score " + frame +" "+computerScore);
  }
  
 }
 
 text("com speed " + frame, 0, 120);
if(myScore == 4){
  computerScore = 1;
  myScore = 1;
  Rate = 2;
  frame = 90;
}
if(computerScore == 4){
  
 computerScore = 1;
  myScore = 1;
  Rate = 2;
  frame = 90;
    }
  }
}

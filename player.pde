class Player{
int xpos; int ypos;
color paddlecolor = color(200);

Player(int screen_y){
xpos = SCREENX/2;
ypos = screen_y;
}
void move(int p){
if(p>SCREENX - PADDLEWIDTH) xpos = SCREENX - PADDLEWIDTH;
else xpos=p;
}
void draw() {
fill(paddlecolor);
rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
  }
}

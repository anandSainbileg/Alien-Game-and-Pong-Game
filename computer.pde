float frame = 90;
class Computer{
float xpos; int ypos;
color paddlecolor = color(200);

Computer(int screen_y){
  xpos = SCREENX/2;
  ypos = screen_y/1000;
}
void move(float c){
 
  if(c>SCREENX - PADDLEWIDTH) xpos = SCREENX - PADDLEWIDTH;
 else if (c>0) xpos=c;

}
void draw() {
frameRate(frame);
  fill(paddlecolor);
rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
  }
}

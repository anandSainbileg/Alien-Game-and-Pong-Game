class score{


void countScore(){
if(ballY<0) {
  myScore = myScore + 1;
Rate = Rate + 1;
println(myScore);
}
if(ballY>320) {
  computerScore = computerScore + 1;
  println(computerScore);
}
if(myScore == 3){
  computerScore = 0;
  myScore = 0;
}
if(computerScore == 3){
 computerScore = 0;
  myScore = 0;
    } 
  }
}

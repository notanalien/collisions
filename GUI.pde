void GUI(){
  fill(0);
  rect(ansX[0], ansY[0], ansSquare, ansSquare); //Answer Area #1
  rect(ansX[1], ansY[1], ansSquare, ansSquare); //Answer Area #2
  rect(ansX[2], ansY[2], ansSquare, ansSquare); //Answer Area #3
  fill(255);
  fill(colour[0]);
  rectMode(CENTER);
  rect(100, 900, markerD, markerD); //Marker#1
  rect(250, 900, markerD, markerD); //Marker#2
  rect(400, 900, markerD, markerD); //Marker#3
  fill(colour[4]);
  triangle(960, 950, 985, 1000, 935, 1000); //Reset
}
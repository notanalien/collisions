void setup() {
  fullScreen();
  println(displayWidth+" "+displayHeight);
}

void draw() {
  background(colour[3]);
  GUI();
  if (create[0] == true) { //Marker#1
    fill(colour[1]);
    if (correct[0] == true) {
      fill(colour[2]);
    }
    rectMode(CENTER);
    rect(markerX[0], markerY[0], markerD, markerD);
    if (move[0] == true) {
      markerX[0] = mouseX;
      markerY[0] = mouseY;
      correct[0] = false;
    }
  }
  if (create[1] == true) { //Marker#2
    fill(colour[1]);
    if (correct[1] == true) {
      fill(colour[2]);
    }
    rectMode(CENTER);
    rect (markerX[1], markerY[1], markerD, markerD);
    if (move[1] == true) {
      markerX[1] = mouseX;
      markerY[1] = mouseY;
      correct[1] = false;
    }
  }
    if (create[2] == true) { //Marker#3
    fill(colour[1]);
    if (correct[2] == true) {
      fill(colour[2]);
    }
    rectMode(CENTER);
    rect (markerX[2], markerY[2], markerD, markerD);
    if (move[2] == true) {
      markerX[2] = mouseX;
      markerY[2] = mouseY;
      correct[2] = false;
    }
    }
}

void mousePressed() {
  move[0] = false;
  move[1] = false;
  move[2] = false;
  add = false;

  if (mouseX > SAx[0] && mouseX < SAx[0]+markerD && mouseY > SAy[0] && mouseY < SAy[0]+markerD) { //Marker#1
    create[0] = true;
    move[0] = true;
  }

  if (mouseX > SAx[1] && mouseX < SAx[1]+markerD && mouseY > SAy[1] && mouseY < SAy[1]+markerD) { //Marker#2
    create[1] = true;
    move[1] = true;
  }

  if (mouseX > SAx[2] && mouseX < SAx[2]+markerD && mouseY > SAy[2] && mouseY < SAy[2]+markerD) { //Marker#3
    create[2] = true;
    move[2] = true;
  }

  if (mouseX > ansX[0] && mouseX < ansX[0]+ansSquare && mouseY > ansY[0] && mouseY < ansY[0]+ansSquare) { //Answer Area Marker#1
    correct[0] = true;
  }

  if (mouseX > ansX[1] && mouseX < ansX[1]+ansSquare && mouseY > ansY[1] && mouseY < ansY[1]+ansSquare) { //Answer Area Marker#2
    correct[1] = true;
  }
  if (mouseX > ansX[2] && mouseX < ansX[2]+ansSquare && mouseY > ansY[2] && mouseY < ansY[2]+ansSquare) { //Answer Area Marker#3
    correct[2] = true;
  }
}
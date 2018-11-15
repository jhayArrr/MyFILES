void xoTextDraw(){
  //X&O in Board
  if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
    xoText(x, position);
  } else {
    xoText(o, position);
  }

}

void xoText(String text, int position) {
  fill(#0DFF53); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(xoFont, 80); //Change the number until it fits, largest font size
  if (position == 1) {
    text(text, width*0/24, height*6/24, width*8/24, height*6/24);
  }
  if (position == 2) {
    text(text, width*8/24, height*6/24, width*8/24, height*6/24);
  }
  if (position == 3) {
    text(text, width*16/24, height*6/24, width*8/24, height*6/24);
  }
  if (position == 4) {
    text(text, width*0/24, height*12/24, width*8/24, height*6/24);
  }
  if (position == 5) {
    text(text, width*8/24, height*12/24, width*8/24, height*6/24);
  }
  if (position == 6) {
    text(text, width*16/24, height*12/24, width*8/24, height*6/24);
  }
  if (position == 7) {
    text(text, width*0/24, height*18/24, width*8/24, height*6/24);
  }
  if (position == 8) {
    text(text, width*8/24, height*18/24, width*8/24, height*6/24);
  }
  if (position == 9) {
    text(text, width*16/24, height*18/24, width*8/24, height*6/24);
  }
  fill(255); //Reset to white for rest of the program
}

void xoButtonDraw() {
    //for MouseClicked Listener, each of buttons in X&O Board

  //To Test Each Button, use the following code
  //Intended to increase counter of xWins or oWins
  
  /*fill(255);
   noStroke();
   rect(); //Use dimensions of the individual rectangles from GUI Design
   stroke(1);
   xWin+=1;
  */

  if (noDraw[0] == false && mouseX>width*0/24 && mouseX<width*8/24 && mouseY>height*6/24 && mouseY<height*12/24) { //#1
    position = 1;
    noDraw[0] = true;
    count++;
  }
  if (noDraw[1] == false && mouseX>width*8/24 && mouseX<width*16/24 && mouseY>height*6/24 && mouseY<height*12/24) { //#2
    position = 2;
    noDraw[1] = true;
    count++;
  } 
  if (noDraw[2] == false && mouseX>width*16/24 && mouseX<width*24/24 && mouseY>height*6/24 && mouseY<height*12/24) { //#3
    position = 3;
    noDraw[2] = true;
    count++;
  } 
  if (noDraw[3] == false && mouseX>width*0/24 && mouseX<width*8/24 && mouseY>height*12/24 && mouseY<height*18/24) { //#4
    position = 4;
    noDraw[3] = true;
    count++;
  } 
  if (noDraw[4] == false && mouseX>width*8/24 && mouseX<width*16/24 && mouseY>height*12/24 && mouseY<height*18/24) { //#5
    position = 5;
    noDraw[4] = true;
    count++;
  } 
  if (noDraw[5] == false && mouseX>width*16/24 && mouseX<width*24/24 && mouseY>height*12/24 && mouseY<height*18/24) { //#6
    position = 6;
    noDraw[5] = true;
    count++;
  } 
  if (noDraw[6] == false && mouseX>width*0/24 && mouseX<width*8/24 && mouseY>height*18/24 && mouseY<height*24/24) { //#7
    position = 7;
    noDraw[6] = true;
    count++;
  } 
  if (noDraw[7] == false && mouseX>width*8/24 && mouseX<width*16/24 && mouseY>height*18/24 && mouseY<height*24/24) { //#8
    position = 8;
    noDraw[7] = true;
    count++;
  } 
  if (noDraw[8] == false && mouseX>width*16/24 && mouseX<width*24/24 && mouseY>height*18/24 && mouseY<height*24/24) { //#9
    position = 9;
    noDraw[8] = true;
    count++;
  }
}
  

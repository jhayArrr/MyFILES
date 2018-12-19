color black = 0;
color yellow = #FFF703;
color regularButton = black;
color hoverOverButton = yellow;
String title = "QUIT";

void quitButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void quitButtonDraw() {
  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>0 && mouseX<50 && mouseY<25 && mouseY>0) { //Hover Over
    fill(hoverOverButton);
    stroke(0);
    rect(0, 0, 100, 50);
  } else {
    fill(regularButton);
    stroke(0);
    rect(0, 0, 100, 50);
  }

  //Text in Quit Button
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(playerFont, width*1/30); //Change the number until it fits, largest font size
  text(title, 20, 10, width*1/12, height*3.5/24);
  fill(0); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX>width*0 && mouseX<50 && mouseY<25 && mouseY>0) {
    exit();
  }
}

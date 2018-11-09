color black = 0;
color yellow = #FFF703;
color regularButton = black;
color hoverOverButton = yellow;
String title = "QUIT";

void quitButtonSetup() {
  xoFont = createFont ("Playbill", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void quitButtonDraw() {
  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>width*0/16 && mouseX<width*1.5/12 && mouseY<height*5.9/24 && mouseY>height*4/24) { //Hover Over
    fill(hoverOverButton);
    stroke(0);
    rect(0, height*5/24, width*1.5/12, height*0.7/24);
  } else {
    fill(regularButton);
    stroke(0);
    rect(0, height*5/24, width*1.5/12, height*0.7/24);
  }

  //Text in Quit Button
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(xoFont, width*1/25); //Change the number until it fits, largest font size
  text(title, 0, height*3.5/24, width*1/12, height*3.5/24);
  fill(0); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX>width*0/16 && mouseX<width*1.5/12 && mouseY<height*5.9/24 && mouseY>height*4/24) {
    exit();
  }
}

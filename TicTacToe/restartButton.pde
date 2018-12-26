String name = "RESTART";

void restartButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  
  // 

}



void restartButtonDraw() {
  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>415 && mouseX<500 && mouseY<25 && mouseY>0) { //Hover Over
    fill(hoverOverButton);
    stroke(0);
    rect(465, 0, 100, 50);
  } 
  else {
    fill(regularButton);
    stroke(0);
    rect(465, 0, 100, 50);
  }



  //Text in Restart Button

  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(playerFont, width*1/30); //Change the number until it fits, largest font size
  text(name, 460, 10, width*1/6, height*3.5/24);
  fill(0); //Reset to white for rest of the program

}

void restartButtonMousePressed() {
   if (mousePressed == mouseX>415 && mouseX<500 && mouseY<25 && mouseY>0) {
   Tile[] tiles = new Tile[9];
    for ( int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile();
    }
    tiles[0].offset(125, 240);
    tiles[1].offset(250, 240);
    tiles[2].offset(375, 240);
    tiles[3].offset(125, 365);
    tiles[4].offset(250, 365);
    tiles[5].offset(375, 365);
    tiles[6].offset(125, 490);
    tiles[7].offset(250, 490);
    tiles[8].offset(375, 490);

    for ( int i = 0; i < tiles.length; i++) {
      tiles[i].show();
    }
  }
}

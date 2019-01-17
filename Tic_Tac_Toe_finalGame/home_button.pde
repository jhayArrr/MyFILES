void home_ButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48);
  scoreFont = createFont ("Rockwell", 48);
  levelFont = createFont ("Ravie", 48);
}

void onePlayerDraw() {
  if (mouseX>width/2.25 && mouseX<width*47/50 && mouseY<height*19/40 && mouseY>height/2-height/8) { //Hover Over
    fill(HoverOverButton);
    rect(width/2.25, height/2-height/8, width/2, height*1/10);
  } 
  else {
    fill(RegularButton);
    rect(width/2.25, height/2-height/8, width/2, height*1/10);
  }
  //Text in menu button
  fill(#2C08FF);
  textAlign (LEFT, CENTER); 
  textFont(scoreFont, width*1/10); 
  text("1 PLAYER", width/2.10, height/2-height/12);
  fill(0); 
  //one player button activate
  if (!start) {
  if (mouseX>width/2.25 && mouseX<width*47/50 && mouseY<height*19/40 && mouseY>height/2-height/8 && pressed) {
     againstPC = true;
      start = true;
    }
  }
}

void twoPlayerDraw() {
  if (mouseX>width/2.25 && mouseX<width*47/50 && mouseY<height*77/120 && mouseY>height*13/24) { //Hover Over
    fill(HoverOverButton);
    rect(width/2.25, height/2+width/20, width/2, height*1/10);
  } 
  else {
    fill(RegularButton);
    rect(width/2.25, height/2+width/20, width/2, height*1/10);
  }
  //Text in twoplayer Button

  fill(#2C08FF);
  textAlign (LEFT, CENTER); 
  textFont(scoreFont, width*1/10);
  text("2 PLAYER", width/2.10, height/2+height/12);
  fill(0);
  if (!start) {
  if (mouseX>width/2.25 && mouseX<width*47/50 && mouseY<height*77/120 && mouseY>height*13/24 && pressed) {
     againstPC = false;
     start = true;
    }
  }
}

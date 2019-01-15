void reset() {
  background(0); 
  strokeWeight(1);
  stroke(100);
  fill(50);
  rect(width*1/50, height*1/60, width*48/50, height*29/30, 50);
  textFont(levelFont, width/10);
  textAlign(CENTER, BOTTOM);
  pushMatrix();
  translate(width/5, height/2);
  rotate(-HALF_PI);
  fill(255-100);
  text("Tik-Tac-Toe", height*0-height/200, height*0+height/200);
  fill(255);
  text("Tik-Tac-Toe", width*0, width*0);
  popMatrix();
    //divider
  drawDivider();
  onePlayerDraw();
  twoPlayerDraw();


  for (int i = 0; i < 9; i++) {
    checked[i] = false;
    image[i] = ' ';
  }
  if (win) {
    win = false;
    if (againstPC && !odd) scorePC ++;
  }
  odd = true;
  nClicks = 0;
}

//Global Variables
//Lobby
//One Player
//Two Player
int gameScreen = 0;
int gameLoc = 0;
boolean inGame;
int player;
Board board = new Board();
String quit = "QUIT", p1 = "PLAYER 1", p2 = "PLAYER 2", r = "RED", p = "PURPLE", restart = "RESTART";
PFont playerFont, scoreFont, levelFont;
int scoreP1, scoreP2;
boolean gameOver;
int value = -1;
color black = 0;
color yellow = #FFF703;
color regularButton = black;
color hoverOverButton = yellow;

//Button
Button firstPlayer;
Button twoPlayer;

public void setup() {
  size(500, 600);
  scoreP1 = scoreP2 = 0; 
  quitButtonSetup();
  restartButtonSetup();
  restartButtonDraw();
  playerFont = createFont ("BradleyHandITC-48.vlw", 48);
  scoreFont = createFont ("Rockwell", 48);
  levelFont = createFont ("Ravie", 48);
  smooth();
  firstPlayer = new Button(width/1.5, height/2-50, "1 PLAYER");
  twoPlayer = new Button(width/1.5, height/2+50, "2 PLAYERS");
  
  //cleanup
  Tile[] tiles = new Tile[9];
  for ( int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile();
      tiles[i].show();
  }
  
}

void draw() {
  switch(gameScreen) {
  case 0:
    lobby();
    return;
  case 1:
    onePlayer();
    gameLoc = 1;

    return;
  case 2:
    twoPlayer();
    gameLoc = 2;
    return;
  case 3:
    return;
  }
}

void drawDivider() {
  for (int i=10; i < height; i+= 10*2) {

    noStroke();
    rectMode(CENTER);
    fill(255-100);
    rect(width/3.5, i+1, 3, 10);
    fill(255);
    rect(width/3.5, i, 3, 10);
  }
}

void lobby() {
  surface.setTitle("Tik-Tac-Toe");

//Lobby Setup
  background(0);
  textFont(levelFont);

  textAlign(CENTER, BOTTOM);
  pushMatrix();
  translate(width/5, height/2);
  rotate(-HALF_PI);
  fill(255-100);
  text("Tik-Tac-Toe", 0-3, 0+3);
  fill(255);
  text("Tik-Tac-Toe", 0, 0);
  popMatrix();
  
  drawDivider();


//button setup
  firstPlayer.show();
  if (firstPlayer.isPressed()) {
    gameScreen = 1;
  }

  twoPlayer.show();
  if (twoPlayer.isPressed()) {
    gameScreen = 2;
  }
}


void onePlayer() {
  background(0);
  board.show();
  textSize(50);
  fill(0);
  textFont (levelFont, 40);
  text("TIC-TAC-TOE", width/2, height*1/12);
  //Showboard
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text ("EASY\n Level", width*15/100, height*1/5, width*1/3, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text ("DIFFICULT\n Level", width*80/100, height*1/5, width*1/3, height*1/12);
  //tictactoe background
  fill(#F2E6E6);
  textFont (levelFont, 40);
  text("TIC-TAC-TOE", width/1.98, height*1/12.02);
 
  quitButtonDraw();
  restartButtonDraw();
}
  
private void twoPlayer() {

  background(0);
  board.show();
  textSize(50);
  fill(0);
  textAlign(CENTER, CENTER);
  if (player == 0 ) {
    fill(#FA6567);
    textFont (scoreFont, 15);
    text("RED's turn", width/2, height*1/1.05);
  }
  if (player == 1 ) {
    fill(#ED7ADE);
    textFont (scoreFont, 15);
    text("PURPLE's turn", width/2, height*1/1.05);
  }
  textFont (levelFont, 40);
  text("TIC-TAC-TOE", width/2, height*1/12);


  if (board.checkWin(0)) {
    gameOver(0);
    gameOver = true;
  }
  if (board.checkWin(1)) {
    gameOver(1);
    gameOver = true;
  }
  if (board.boardFull()) {
    gameOver(-1);
    gameOver = true;
  }

  //Showboard
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*15/100, height*1/5, width*1/3, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*85/100, height*1/5, width*1/3, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (r, width*15/100, height*1/4, width*1/3, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (p, width*85/100, height*1/4, width*1/3, height*1/12);
  
  //tictactoe background
  fill(#F2E6E6);
  textFont (levelFont, 40);
  text("TIC-TAC-TOE", width/1.98, height*1/12.02);
  
  quitButtonDraw();
  restartButtonDraw();
}

  
 
void gameOver(int plyr) {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(50);
  if (plyr == 0) {
    fill(#FA6567);
    textFont (levelFont, width*1/10);
    text("RED WINS", width/2, height/2);
  
  //
  }
  if (plyr == 1) {
    fill(#ED7ADE);
    textFont (levelFont, width*1/10);
    text("PURPLE\nWINS", width/2, height/2); 
  }
  
  //
  if (plyr == -1) {
    text("TIE", width/2, height/2);

}
}


void quitButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void restartButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

}


void quitButtonDraw() {
  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>0 && mouseX<50 && mouseY<25 && mouseY>0) { //Hover Over
    fill(hoverOverButton);
    stroke(0);
    rect(0, 0, 100, 50);
  } 
  else {
    fill(regularButton);
    stroke(0);
    rect(0, 0, 100, 50);
  }



  //Text in Quit Button

  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(playerFont, width*1/30); //Change the number until it fits, largest font size
  text(quit, 20, 10, width*1/12, height*3.5/24);
  fill(0); //Reset to white for rest of the program

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
  text(restart, 460, 10, width*1/6, height*3.5/24);
  fill(0); //Reset to white for rest of the program
  //game restart
  if (mousePressed && mouseX>415 && mouseX<500 && mouseY<25 && mouseY>0) {
     board.show();
}
}



void quitButtonMousePressed() {
  if (mousePressed && mouseX>width*0 && mouseX<50 && mouseY<25 && mouseY>0) {
    exit();
  }
}

void mousePressed() {
  quitButtonMousePressed();

  for (int i = 0; i < board.tiles.length; i++) {
    if (board.tiles[i].isHover()) {
      board.choose(board.tiles[i], player);
    }
  }
  if (mouseX>415 && mouseX<500 && mouseY<25 && mouseY>0) {
     board.show();}
}

void mouseClicked() {
    if (mouseX>415 && mouseX<500 && mouseY<25 && mouseY>0) {
     board.show();}

}

void mouseReleased() {
}

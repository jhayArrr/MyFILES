Board board = new Board();
boolean inGame;
int player;
String quit = "QUIT", p1 = "PLAYER 1", p2 = "PLAYER 2", r = "RED", p = "PURPLE", restart = "RESTART";
PFont playerFont, scoreFont, levelFont;
int scoreP1, scoreP2;
boolean gameOver;
int value = -1;

public void setup() {
  size(500, 600);

  scoreP1 = scoreP2 = 0; 
  quitButtonSetup();
  restartButtonSetup();
  restartButtonMousePressed();
  setup2();  
}

public void setup2() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48);
  scoreFont = createFont ("Rockwell", 48);
  levelFont = createFont ("Ravie", 48);
  smooth();
  
}

void draw() {
  //player text
  
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
  restartButtonMousePressed();

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

void mousePressed() {
  for (int i = 0; i < board.tiles.length; i++) {
    if (board.tiles[i].isHover()) {
      board.choose(board.tiles[i], player);
    }
  }
  restartButtonMousePressed();
  quitButtonMousePressed();
}

void mouseReleased() {
  restartButtonMousePressed();
  
}

void mouseClicked() {
  restartButtonMousePressed();
  
  
}
  
 

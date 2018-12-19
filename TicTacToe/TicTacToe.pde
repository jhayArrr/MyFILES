Board board = new Board();
boolean inGame;
int player;
String quit = "QUIT", p1 = "PLAYER 1", p2 = "PLAYER 2";
PFont playerFont, scoreFont, levelFont;
boolean gameOver;

void setup() {
  size(500, 600);
  player = (int) random(-1, 2);
  smooth();
  //Font create
  playerFont = createFont ("BradleyHandITC-48.vlw", 48);
  scoreFont = createFont ("Rockwell", 48);
  levelFont = createFont ("Ravie", 48);
  background(0);
  
  quitButtonSetup();
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
  }
  if (player == 1 ) {
    fill(#ED7ADE);
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

  
  //Scoreboard
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*15/100, height*1/5, width*1/3, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*85/100, height*1/5, width*1/3, height*1/12);
  quitButtonDraw();

}
void gameOver(int plyr) {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(50);
  if (plyr == 0) {
    fill(#FA6567);
    text("RED WINS", width/2, height/2);
  }
  if (plyr == 1) {
    fill(#ED7ADE);
    text("PURPLE\nWINS", width/2, height/2);
  }
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
}

void mouseClicked () {
    quitButtonMouseClicked();
}

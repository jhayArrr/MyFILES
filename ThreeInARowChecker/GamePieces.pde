int numberOfBoardPieces = 9;
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];

void gamePieces() {
  boardPiece[0] = null;
  boardPiece[1] = null;
  boardPiece[2] = null;
  boardPiece[3] = null;
  boardPiece[4] = null;
  boardPiece[5] = null;
  boardPiece[6] = null;
  boardPiece[7] = null;
  boardPiece[8] = null;
  
  onlyX();
  onlyO();
  
}

void onlyX() {
  for (int i=0;, i<numberOfBoardPieces; i++) {
  if (boardPiece[i] == "X") {
    onlyXPiece[i] = "X";
  }
}
}
void onlyO() {
      for (int i=0;, i<numberOfBoardPieces; i++) {
  if (boardPiece[i] == "O") {
    onlyXPiece[i] = "O";
  }
}
}

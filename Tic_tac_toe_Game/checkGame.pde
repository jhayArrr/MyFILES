void checkGame() {
  
for (int xWin = 0; xWin < oWin; xWin++) {
 //horizontal checking
    if (position == 1 && position == 2 && position == 3) {
      win = xWin;
    } 
    else if (position == 4 && position == 5 && position == 6) {
      win = xWin;
    } 
    else if (position == 7 && position == 8 && position == 9) {
      win = xWin;
    }
    else if (position == 1 && position == 4 && position == 7) {
      win = xWin;
    }
      else if (position == 2 && position == 5 && position == 8) {
      win = xWin;
    } 
    else if (position == 3 && position == 6 && position == 9) {
      win = xWin;
    }
    
    //diagonal wins
    else if (position == 1 && position == 5 && position == 9) {
      win = xWin;
    }
        else if (position == 3 && position == 5 && position == 7) {
      win = xWin;
    }
  }
  
  for (int oWin = 0; oWin < xWin; oWin++) {
 //horizontal checking
    if (position == 1 && position == 2 && position == 3) {
      win = oWin;
    } 
    else if (position == 4 && position == 5 && position == 6) {
      win = oWin;
    } 
    else if (position == 7 && position == 8 && position == 9) {
      win = oWin;
    }
    else if (position == 1 && position == 4 && position == 7) {
      win = oWin;
    }
      else if (position == 2 && position == 5 && position == 8) {
      win = oWin;
    } 
    else if (position == 3 && position == 6 && position == 9) {
      win = oWin;
    }
    
    //diagonal wins
    else if (position == 1 && position == 5 && position == 9) {
      win = oWin;
    }
        else if (position == 3 && position == 5 && position == 7) {
      win = oWin;
    }
  }
}
 
 

boolean start = false;
int nClicks = 0;
String quit = "QUIT", p1 = "PLAYER 1", p2 = "PLAYER 2", r = "RED", p = "PURPLE", pr = "PLAYER", c= "COMPUTER", restart = "RESTART";
boolean[] checked = new boolean[9];
PFont playerFont, scoreFont, levelFont;
boolean odd = true;
char[] image = new char[9];
boolean win = false;
boolean againstPC = true; //computePlay
color regularButton = 0;
color hoverOverButton = #FFF703;
color RegularButton = 50;
color HoverOverButton = #00FFDF;
boolean pressed;

void setup() {
  size(1000, 1200);
  //fullScreen();
  keyPressed();
  home_ButtonSetup();
  score();
  onePlayerDraw();
  twoPlayerDraw();
  quitButtonSetup();
  restartButtonSetup();
  restartButtonDraw();
  playerFont = createFont ("BradleyHandITC-48.vlw", 48);
  scoreFont = createFont ("Rockwell", 48);
  levelFont = createFont ("Ravie", 48);
  smooth();
}

void draw() {
  if (!start) reset();
  else {
    background(0);
    strokeWeight(2);
    stroke(0);
    fill(50);
    // line dividers
    rect(width*1/8, height*7/24, width*3/4, height*15/24);
    line(width*1/8, height*7/24, width*7/8, height*7/24);
    line(width*1/8, height*1/2, width*7/8, height*1/2);
    line(width*1/8, height*17/24, width*7/8, height*17/24);
    line(width*1/8, height*11/12, width*7/8, height*11/12);
    line(width*1/8, height*7/24, width*1/8, height*11/12);
    line(width*3/8, height*7/24, width*3/8, height*11/12);
    line(width*5/8, height*7/24, width*5/8, height*11/12);
    line(width*7/8, height*7/24, width*7/8, height*11/12);
    quitButtonDraw();
    restartButtonDraw(); 
    //info board for player names
    if (start==true && againstPC == true) {    
      fill(#00FFDF);
      textAlign (CENTER, CENTER);
      textFont (playerFont, width*1/25);
      text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
      fill(#00FFDF);
      textAlign (CENTER, CENTER);
      textFont (playerFont, width*1/25);
      text (p2, width*75/100, height*1/7, width*1/4, height*1/12);

      //info board for player colors
      fill(#FA6567);
      textFont (playerFont, width*1/25);
      text (pr, width*0/100, height*1/5.5, width*1/4, height*1/12);
      fill(#ED7ADE);
      textFont (playerFont, width*1/25);
      text (c, width*75/100, height*1/5.5, width*1/4, height*1/12);
    } else if (start == true && againstPC == false) {
      fill(#00FFDF);
      textAlign (CENTER, CENTER);
      textFont (playerFont, width*1/25);
      text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
      fill(#00FFDF);
      textAlign (CENTER, CENTER);
      textFont (playerFont, width*1/25);
      text (p2, width*75/100, height*1/7, width*1/4, height*1/12);

      //info board for player in 2 player mode
      fill(#FA6567);
      textFont (playerFont, width*1/25);
      text (r, width*0/100, height*1/5.5, width*1/4, height*1/12);
      fill(#ED7ADE);
      textFont (playerFont, width*1/25);
      text (p, width*75/100, height*1/5.5, width*1/4, height*1/12);
    }

    //tictactoe background
    fill(#F2E6E6);
    textFont (levelFont, height/15);
    text("TIC-TAC-TOE", width/1.98, height*1/12.02);
    score();

    for (int i = 0; i < 9; i++) {
      if (checked[i]) {
        switch(i) {
        case 0:  
          if (image[0] == 'X') cross(0);
          else circle(0);
          break;
        case 1:  
          if (image[1] == 'X') cross(1);
          else circle(1);
          break;
        case 2:  
          if (image[2] == 'X') cross(2);
          else circle(2);
          break;
        case 3:  
          if (image[3] == 'X') cross(3);
          else circle(3);
          break;
        case 4:  
          if (image[4] == 'X') cross(4);
          else circle(4);
          break;
        case 5:  
          if (image[5] == 'X') cross(5);
          else circle(5);
          break;
        case 6:  
          if (image[6] == 'X') cross(6);
          else circle(6);
          break;
        case 7:  
          if (image[7] == 'X') cross(7);
          else circle(7);
          break;
        case 8:  
          if (image[8] == 'X') cross(8);
          else circle(8);
          break;
        }
        redoGame();
      }
    }
  }
}

void drawDivider() {
  strokeWeight(10);
  line(width*1/3, height*1/30, width*1/3, height*29/30);
  fill(50);
}

void keyPressed() {
  if (keyCode == ENTER) start = !start;
  if (!start) {
    if (keyCode == LEFT) {
      againstPC = true;
      start = true;
    }
    if (keyCode == RIGHT) 
    {
      againstPC = false;
      start = true;
    }
  }
}



void winCheck() {
  if ( (image[0] == 'X' && image[1] == 'X' && image[2] == 'X') ||
    (image[0] == 'X' && image[4] == 'X' && image[8] == 'X') ||
    (image[0] == 'X' && image[3] == 'X' && image[6] == 'X') ||
    (image[1] == 'X' && image[4] == 'X' && image[7] == 'X') ||
    (image[2] == 'X' && image[4] == 'X' && image[6] == 'X') ||
    (image[2] == 'X' && image[5] == 'X' && image[8] == 'X') ||
    (image[3] == 'X' && image[4] == 'X' && image[5] == 'X') ||
    (image[6] == 'X' && image[7] == 'X' && image[8] == 'X') ||

    (image[0] == 'O' && image[1] == 'O' && image[2] == 'O') ||
    (image[0] == 'O' && image[4] == 'O' && image[8] == 'O') ||
    (image[0] == 'O' && image[3] == 'O' && image[6] == 'O') ||
    (image[1] == 'O' && image[4] == 'O' && image[7] == 'O') ||
    (image[2] == 'O' && image[4] == 'O' && image[6] == 'O') ||
    (image[2] == 'O' && image[5] == 'O' && image[8] == 'O') ||
    (image[3] == 'O' && image[4] == 'O' && image[5] == 'O') ||
    (image[6] == 'O' && image[7] == 'O' && image[8] == 'O')) win = true;
}

void mouseReleased() {
  pressed = false;
}
void mouseClicked() {
  if (!start && mouseX>width/2.25 && mouseX<width*47/50 && mouseY<height*77/120 && mouseY>height*13/24) {
    pressed = true;
  }
  if (!start && mouseX>width/2.25 && mouseX<width*47/50 && mouseY<height*19/40 && mouseY>height/2-height/8) {
    pressed = true;
  }
  if (againstPC && start) {
    if (start && !win && (nClicks % 2) == 0) {
      if (mouseX > width*1/8 && mouseX < width*3/8) {
        if (mouseY > height*7/24 && mouseY < height*1/2) {
          if (!checked[0]) {
            checked[0] = true;
            if (odd) image[0] = 'O';
            else image[0] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*1/2 && mouseY < height*17/24) {
          if (!checked[3]) {
            checked[3] = true;
            if (odd) image[3] = 'O';
            else image[3] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*17/24 && mouseY < height*11/12) {
          if (!checked[6]) {
            checked[6] = true;
            if (odd) image[6] = 'O';
            else image[6] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
      }
      if (mouseX > width*3/8 && mouseX <width*5/8) {
        if (mouseY > height*7/24 && mouseY < height*1/2) {
          if (!checked[1]) {
            checked[1] = true;
            if (odd) image[1] = 'O';
            else image[1] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*1/2 && mouseY < height*17/24) {
          if (!checked[4]) {
            checked[4] = true;
            if (odd) image[4] = 'O';
            else image[4] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*17/24 && mouseY <height*11/12) {
          if (!checked[7]) {
            checked[7] = true;
            if (odd) image[7] = 'O';
            else image[7] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
      }
      if (mouseX > width*5/8 && mouseX < width*7/8) {
        if (mouseY > height*7/24 && mouseY < height*1/2) {
          if (!checked[2]) {
            checked[2] = true;
            if (odd) image[2] = 'O';
            else image[2] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*1/2 && mouseY < height*17/24) {
          if (!checked[5]) {
            checked[5] = true;
            if (odd) image[5] = 'O';
            else image[5] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*17/24 && mouseY < height*11/12) {
          if (!checked[8]) {
            checked[8] = true;
            if (odd) image[8] = 'O';
            else image[8] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
      }
    }
  } else {
    if (start && !win) {
      if (mouseX > width*1/8 && mouseX < width*3/8) {
        if (mouseY > height*7/24 && mouseY < height*1/2) {
          if (!checked[0]) {
            checked[0] = true;
            if (odd) image[0] = 'O';
            else image[0] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*1/2 && mouseY < height*17/24) {
          if (!checked[3]) {
            checked[3] = true;
            if (odd) image[3] = 'O';
            else image[3] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*17/24 && mouseY < height*11/12) {
          if (!checked[6]) {
            checked[6] = true;
            if (odd) image[6] = 'O';
            else image[6] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
      }
      if (mouseX > width*3/8 && mouseX <width*5/8) {
        if (mouseY > height*7/24 && mouseY < height*1/2) {
          if (!checked[1]) {
            checked[1] = true;
            if (odd) image[1] = 'O';
            else image[1] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*1/2 && mouseY < height*17/24) {
          if (!checked[4]) {
            checked[4] = true;
            if (odd) image[4] = 'O';
            else image[4] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*17/24 && mouseY < height*11/12) {
          if (!checked[7]) {
            checked[7] = true;
            if (odd) image[7] = 'O';
            else image[7] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
      }
      if (mouseX > width*5/8 && mouseX < width*7/8) {
        if (mouseY > height*7/24 && mouseY < height*1/2) {
          if (!checked[2]) {
            checked[2] = true;
            if (odd) image[2] = 'O';
            else image[2] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*1/2 && mouseY < height*17/24) {
          if (!checked[5]) {
            checked[5] = true;
            if (odd) image[5] = 'O';
            else image[5] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
        if (mouseY > height*17/24 && mouseY < height*11/12) {
          if (!checked[8]) {
            checked[8] = true;
            if (odd) image[8] = 'O';
            else image[8] = 'X';
            odd = !odd;
            nClicks++;
          }
        }
      }
    }
  }
}

void quitButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void restartButtonSetup() {
  playerFont = createFont ("BradleyHandITC-48.vlw", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}


void quitButtonDraw() {
  if (mouseX>width*0 && mouseX<width*1/8 && mouseY<height*1/24 && mouseY>height*0) { //Hover Over
    fill(hoverOverButton);
    stroke(0);
    rect(width*0, height*0, width*1/8, height*1/24);
  } else {
    fill(regularButton);
    stroke(0);
    rect(width*0, height*0, width*1/8, height*1/24);
  }
  //Text in Quit Button
  fill(#2C08FF); 
  textAlign (CENTER, CENTER); 
  textFont(playerFont, width*1/30); 
  text(quit, width*0+width*1/100, height*0, width*1/12, height*1/24);
  fill(0);
  //exit button
  if (mousePressed && mouseX>width*0 && mouseX<width*1/8 && mouseY<height*1/24 && mouseY>height*0) {
    exit();
  }
}
void restartButtonDraw() {
  if (mouseX>width*83/100 && mouseX<width && mouseY<height*1/24 && mouseY>height*0) { //Hover Over
    fill(hoverOverButton);
    stroke(0);
    rect(width*83/100, height*0, width, height*1/24);
  } else {
    fill(regularButton);
    stroke(0);
    rect(width*83/100, height*0, width, height*1/24);
  }
  fill(#2C08FF);
  textAlign (CENTER, CENTER); 
  textFont(playerFont, width*1/30); 
  text(restart, width*83/100, height*0, width*1/6, height*1/24);
  fill(0); 
  
  //game restart
  if (mousePressed && mouseX>width*83/100 && mouseX<width && mouseY<height*1/24 && mouseY>height*0) {
    start = false;
    pressed = false;
  }
}

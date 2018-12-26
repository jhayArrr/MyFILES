//Gloabal Variables
//Lobby
//One Player
//Two Player
int gameScreen = 0;
int gameLoc = 0;
boolean paused = false;

//Font
PFont JustMyType90;
PFont JustMyType50;
PFont JustMyType30;

//Score
int scoreLeft = 0;
int scoreRight = 0;

//Balls and Paddles
Paddle paddleL;
Paddle paddleR;
Ball ball1;
Ball ball2;

//Button
Button firstPlayer;
Button twoPlayer;

public void setup() {
  JustMyType90 = loadFont("JustMyType-90.vlw");
  JustMyType50 = loadFont("JustMyType-50.vlw");
  JustMyType30 = loadFont("JustMyType-30.vlw");
  size(500, 500, P2D);
  paddleL = new Paddle(20);
  paddleR = new Paddle(width-20);
  ball1 = new Ball();
  ball2 = new Ball();
  noStroke();

  firstPlayer = new Button(width/2, height/2, 100, "Player 1");
  twoPlayer = new Button(width/2, height/2+120, 100, "Player 2");
  
    //setup for fireworks
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework(width, height);
  }
}
public void draw() {

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
    gameOver();
    return;
  case 4:
    return;
  }
  
}


public void keyReleased() {
  if (gameScreen == 1) {
    if (key == CODED) {
      if (keyCode == UP) {
        paddleL.move(0);
      }
      if (keyCode == DOWN) {
        paddleL.move(0);
      }
    }
  }
  if (gameScreen == 2) {
    if (key == CODED) {
      if (keyCode == UP) {
        paddleR.move(0);
      }
      if (keyCode == DOWN) {
        paddleR.move(0);
      }
    }
    if (key == 'w') {
      paddleL.move(0);
    }
    if (key == 's') {
      paddleL.move(0);
    }
  }
}
public void keyPressed() {


  if (gameScreen == 1) {
    if (key == CODED) {
      if (keyCode == UP) {
        paddleL.move(-5);
      }
      if (keyCode == DOWN) {
        paddleL.move(5);
      }
    }
  }

  if (gameScreen == 2) {
    if (key == CODED) {
      if (keyCode == UP) {
        paddleR.move(-5);
      }
      if (keyCode == DOWN) {
        paddleR.move(5);
      }
    }
    if (key == 'w') {
      paddleL.move(-5);
    }
    if (key == 's') {
      paddleL.move(5);
    }
  }
}


private void drawDivider() {
  for (int i=10; i < height; i+= 10*2) {

    noStroke();
    rectMode(CENTER);
    fill(255-100);
    rect(width/2-1, i+1, 3, 10);
    fill(255);
    rect(width/2, i, 3, 10);
  }
}

private void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(90);
  textFont(JustMyType90);
  text("Game Over", width/2, 100);

  fill(255);
  if (pointRect(mouseX, mouseY, width/2, height/2, 145, 50)) {
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 145, 50);
    fill(0);
  }


  textSize(50);
  textFont(JustMyType50);

  text("Rematch", width/2, height/2);

  fill(255);
  if (pointRect(mouseX, mouseY, width/2, height/2+60, 145, 50)) {
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2+60, 145, 50);
    fill(0);
  }

  text("Exit", width/2, height/2+60);
}



private void lobby() {
  surface.setTitle("Pong");

//Lobby Setup
  background(0);
  textFont(JustMyType90);
  //drawScore();
  textAlign(CENTER, CENTER);
  //drawScore();
  textAlign(CENTER, CENTER);
  fill(255-100);
  text("PONG", width/2-3, 100+3);
  fill(255);
  text("PONG", width/2, 100);



//button setup
  firstPlayer.show();
  if (firstPlayer.isPressed()) {
    gameScreen = 1;
    resetScore();
  }

  twoPlayer.show();
  if (twoPlayer.isPressed()) {
    gameScreen = 2;
    resetScore();
  }
}


private void drawScore() {
  textFont(JustMyType90);
  textAlign(RIGHT);
  fill(255-100);
  text(scoreLeft, width/2-100-3, 100+3);
  fill(255);
  text(scoreLeft, width/2-100, 100);

  textAlign(LEFT);
  fill(255-100);
  text(scoreRight, width/2+100-3, 100+3);
  fill(255);
  text(scoreRight, width/2+100, 100);
}

private void resetScore() {
  ball1.reset();
  ball2.reset();
  scoreLeft = 0;
  scoreRight = 0;
  paddleL.reset();
  paddleR.reset();
}


private void onePlayer() {
  background(0);
    drawScore();
    drawDivider();
    paddleL.display();
    paddleR.display();
    paddleL.update();

    if (ball1.x > width/2) {
      float targetY = ball1.y;
      float dy = targetY - paddleR.y;
      paddleR.y += dy * paddleR.easing;
    } else {
      float targetY = height/2;
      float dy = targetY - paddleR.y;
      paddleR.y += dy * paddleR.easing;
    }
    if (ball2.x > width/2) {
      float targetY = ball2.y;
      float dy = targetY - paddleR.y;
      paddleR.y += dy * paddleR.easing;
    } else {
      float targetY = height/2;
      float dy = targetY - paddleR.y;
      paddleR.y += dy * paddleR.easing;
    }
    paddleR.update();

    ball1.display();
    ball1.update();
    ball2.display();
    ball2.update();
    
      //for fireworks
  if ((scoreLeft > 9 && scoreRight < scoreLeft) ||( scoreRight > 9 && scoreLeft < scoreRight)) {   
    background(0);
    //code for drawing fireworks
      for (int i=0; i < fireworks.length; i++) {
    fireworks[i].step(); //Calculate Arithmetic
    fireworks[i].draw(); //Draw to the Canvas
  }
 }
}



private void twoPlayer() {
    background(0);
    drawDivider();
    drawScore();
    paddleL.display();
    paddleR.display();
    paddleL.update();
    paddleR.update();
    ball1.display();
    ball1.update();
    ball2.display();
    ball2.update();
    
      //for fireworks
  if ((scoreLeft > 9 && scoreRight < scoreLeft) ||( scoreRight > 9 && scoreLeft < scoreRight)) {   
    background(0);
    //code for drawing fireworks
      for (int i=0; i < fireworks.length; i++) {
    fireworks[i].step(); //Calculate Arithmetic
    fireworks[i].draw(); //Draw to the Canvas
  }
 }
}

public boolean collision(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2) {

  // test for collision
  if (x1+w1/2 >= x2-w2/2 && x1-w1/2 <= x2+w2/2 && y1+h1/2 >= y2-h2/2 && y1-h1/2 <= y2+h2/2) {
    return true;    // if a hit, return true
  } else {            // if not, return false
    return false;
  }
}
public boolean pointRect(int px, int py, int rx, int ry, int rw, int rh) {

  // test for collision
  if (px >= rx-rw/2 && px <= rx+rw/2 && py >= ry-rh/2 && py <= ry+rh/2) {
    return true;    // if a hit, return true
  } else {            // if not, return false
    return false;
  }
}

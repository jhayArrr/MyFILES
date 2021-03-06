//Lobby
int gameScreen = 0;
int gameLoc = 0;
PFont JustMyType90, JustMyType50, JustMyType30;
//GamePlay
int scoreLeft = 0;
int scoreRight = 0;
Paddle paddleL;
Paddle paddleR;
Ball ball1;
Ball ball2;
// HomeButtons
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

  firstPlayer = new Button(width/1.5, height/2-50, "1 Player");
  twoPlayer = new Button(width/1.5, height/2+50, "2 Players");
  
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

private void lobby() {
  surface.setTitle("PONG GAME");

//Lobby Setup
  background(0);
  textFont(JustMyType90);
  textAlign(CENTER, BOTTOM);
  pushMatrix();
  translate(width/5, height/2);
  rotate(-HALF_PI);
  fill(255-100);
  text("PONG GAME", 0-3, 50+3);
  fill(255);
  text("PONG GAME", 0, 50);
  popMatrix();
  
  //draw line divider
for (int i=10; i < height; i+= 10*2) {
    noStroke();
    rectMode(CENTER);
    fill(255-100);
    rect(width/3, i+1, 3, 10);
    fill(255);
    rect(width/3, i, 3, 10);
}



//button setup in the homeScreen
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
    fireworks[i].draw(); 
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
    
      //for fireworks in 2 player mode end game
  if ((scoreLeft > 9 && scoreRight < scoreLeft) ||( scoreRight > 9 && scoreLeft < scoreRight)) {   
    background(0);
    //code for drawing fireworks
      for (int i=0; i < fireworks.length; i++) {
    fireworks[i].step(); //Calculate Arithmetic
    fireworks[i].draw(); 
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

  if (px >= rx-rw/2 && px <= rx+rw/2 && py >= ry-rh/2 && py <= ry+rh/2) {
    return true;    // if a hit, return true
  } else {            // if not, return false
    return false;
  }
}

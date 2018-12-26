private class Ball {
  float x = width/2;
  float y = height/2;
  float w = 15;

  float angle = random(-PI/4, PI/4);
  float speed = 10;
  float deltaX = speed * cos(angle);
  float deltaY = speed * sin(angle);
  Ball() {
    reset();
  }
  private void update() {
    y += deltaY;
    x += deltaX;

    // roof bounce
    if (y < 0 || y > height) {
      deltaY *= -1;
    }
    if (x > width) {
      scoreLeft +=1;
      reset();
    } else if (x < 0) {
      scoreRight +=1;
      reset();
    }
    if (rectRect(int(this.x), int(this.y), int(this.w), int(this.w), int(paddleL.x), int(paddleL.y), int(paddleL.w), int(paddleL.h))) {
      deltaX *= -1;
    }
    if (rectRect(int(this.x), int(this.y), int(this.w), int(this.w), int(paddleR.x), int(paddleR.y), int(paddleR.w), int(paddleR.h))) { 
      deltaX *= -1;
    }
  }
  
  private void reset() {
    x = width/2;
    y = height/2;
    w = 15;
    
    // change direction of the ball when reset
    angle = random(-PI/4, PI/4);
    speed = 5;
    deltaX = speed * cos(angle);
    if (random(1) < 0.5) {
      deltaX *= -1;
    }
    deltaY = speed * sin(angle);
  }


  private void display() {
    ellipseMode(CENTER);
    fill(255-100);
    rect(x-3, y+3, w, w);
    fill(255);
    rect(x, y, w, w);
  }
}

  private boolean rectRect(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2) {
    if (x1+w1/2 >= x2-w2/2 && x1-w1/2 <= x2+w2/2 && y1+h1/2 >= y2-h2/2 && y1-h1/2 <= y2+h2/2) {
      return true;
    }else {
    return false;}
  }

class Ball {
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
  void update() {
    y += deltaY;
    x += deltaX;

    // roof bounce
    if (y < 0 || y > height) {
      deltaY *= -1;
    }
    if (x < 0) {
      scoreP2 += 1;
      reset();
    }
    if (x > width) {
      scoreP1 += 1;
      reset();
    }
    
    if(rectRect(int(this.x), int(this.y), int(this.w), int(this.w), int(paddle1.x), int(paddle1.y), int(paddle1.w), int(paddle1.h))) {
      deltaX *= -1;
    }
    if(rectRect(int(this.x), int(this.y), int(this.w), int(this.w), int(paddle2.x), int(paddle2.y), int(paddle2.w), int(paddle2.h))) {
      deltaX *= -1;
    }
  }

  void reset() {
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
  void display() {
    ellipseMode(CENTER);
    fill(255);
    rect(x-3, y+3, w, w);
  }
  boolean rectRect(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2) {
  
  // test for collision
  if (x1+w1/2 >= x2-w2/2 && x1-w1/2 <= x2+w2/2 && y1+h1/2 >= y2-h2/2 && y1-h1/2 <= y2+h2/2) {
    return true;    // if a hit, return true
  }
  else {            // if not, return false
    return false;
  }
}

}

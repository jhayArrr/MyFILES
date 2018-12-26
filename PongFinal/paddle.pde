private class Paddle {
  float x;
  float y;
  float h = 70;
  float w = 12;
  float easing = 0.06;
  int ym = 0;

  Paddle(float x) {
    this.x = x;
    this.y = height/2;
  }

  private void update() {
    this.y += this.ym;
    this.y = constrain(y, 0+h/2, height-h/2);
  }
  private void reset() {
    this.y = height/2;
  }

  private void move(int mv) {
    ym = mv;
  }


  private void display() {
    
    rectMode(CENTER);
    fill(255-100);
    rect(x-3, y+3, w, h);
    fill(255);
    rect(x, y, w, h);
  }
}

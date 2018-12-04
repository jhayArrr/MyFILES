class Paddle {
  float x;
  float y;
  float w = 15;
  float h = 150;
  Paddle(float x, float y) {
    this.x = x;
    this.y = y;
  }
  void display() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  void update() {
    paddle1.y = constrain(this.y, this.h/2, height-this.h/2);  
  }
}

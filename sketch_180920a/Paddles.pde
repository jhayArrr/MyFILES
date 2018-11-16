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
    rect(x,y,w,h);
  }
  void update() {
  }
}

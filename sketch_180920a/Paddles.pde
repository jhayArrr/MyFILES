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
    if (paddle1.y > height-paddle1.y && paddle1.y < 0 ) {
        paddle1.y = height-paddle1.y;
  }
  if (paddle2.y > height-paddle2.y && paddle2.y < 0){
  paddle2.y = height-paddle2.y;
}
  }
}

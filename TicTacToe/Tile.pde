class Tile {
  float x,y;
  int value = -1; // 1 for X; 0 for O
  int id; // eache tile gets an id 1-9
  int w = 125;
  Tile() {
  }
  void show() {
    rectMode(CENTER);
    stroke(0);
    strokeWeight(3);
    fill(50);
    if(isHover() && value == -1) {
      fill(100);
    }
    if(value == 0) {
      fill(#FA6567);
    }
    if(value == 1) {
      fill(#ED7ADE);
    }
    rect(x,y,w,w);
  }
  private void addValue(int value) {
    this.value = value;
  }
  private void offset(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  private boolean isHover() {
    if(mouseX < this.x+ this.w/2 && mouseX > this.x - this.w/2 && mouseY < this.y + this.w/2 && mouseY > this.y - this.w/2) {
      return true;
    }
    return false;
  }
}

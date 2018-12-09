class Rectangle extends Shape {
  
  private float width;
  private float height;
  private color c;
  private float moveSpeed = 30;

  private Rectangle (float x, float y, float width, float height, color c) {
    super (x, y);
    this.width = width;
    this.height = height;
    this.c = c;
  }

  public void draw() {
    fill(c);
    rect(x, y, width, height);
  }
  private void move(int dir) {
    if(dir == 1) {
      y -= moveSpeed;
    }
    if(dir == 2) {
      y += moveSpeed;
    }
  }
  private void mouseMove(float mousey) {
    y=mousey;
  }
}

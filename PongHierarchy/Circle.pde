class Circle extends Shape {
  private float diameter;
  private color c;
  private float speedX = (int) random(-10,10);
  private float speedY = (int) random(-10,10);



  private Circle (float x, float y, float diameter, color c) {
    super (x, y);

    this.diameter = diameter;
    this.c = c;
  }

  public void draw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  private void step() {
    x += speedX; 
    y += speedY;
    if (y > 500 || y < 0) {
      this.speedY *= -1;
    }
    if (x > 500 || x < 0) {
      this.speedX *= -1;
    }
    
    
  }
}

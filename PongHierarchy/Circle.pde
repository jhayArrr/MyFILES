
class Circle extends Shape {

  private float diameter;

  private color c;

  private float speed = 5;

  private float x, y;







  private Circle (float x, float y, float diameter, color c) {

    super (x, y);

    this.x = super.x;

    this.y = super.y;



    this.diameter = diameter;

    this.c = c;

  }



  public void draw() {

    fill(c);

    ellipse(x, y, diameter, diameter);

  }



  private void step() {

    this.y += speed; 

    this.x += speed;

    if (y > 500 || y < 0) {

      this.y *= -1;

    }

    if (x > 500 || x < 0) {

      this.y *= -1;

    }

  }

}

private Firework[] fireworks = new Firework[100];
  private class Firework {
  //Variables
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;
  float gravity;

  //Constructor
  Firework (float width, float height) {
    //X&Y are values when Pong Ball scores
    this.x = width/2; 
    this.y = height/2;
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    this.diameter = random(5,20);
    this.xSpeed = (int) random(-30, 30);
    this.ySpeed = (int) random(-30, 30);
    gravity = .35;
  } //End of Constructor

  //Procedures or Functions
  private void draw() {

  fill(c);
  ellipse(x, y, diameter, diameter);
  }

  private void step() {
    //Increasing x & y by their speeds so the ball moves
    x += xSpeed;
    y += ySpeed;
    if(x < 0+this.diameter || x > width-this.diameter) {
      xSpeed *= -1;
    }
    //Changing Gravity of the firework, not changing the origonal position
    ySpeed += gravity;
  }
    
}

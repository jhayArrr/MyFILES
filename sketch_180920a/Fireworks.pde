Firework[] fireworks = new Firework[100]; //Needs to include static variable
  
  class Firework {
  //Variables
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;
  float gravity;
  //static int count = 10; //Static number for amount of firworks

  //Constructor
  Firework (float width, float height) {
    //X&Y are values when Pong Ball scores
    this.x = width/2; //random (width); actually needs to be the X&Y of the score
    this.y = height/2; //random (height); actually needs to be the X&Y of the score
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    this.diameter = random(5,20);
    this.xSpeed = (int) random(-30, 30);
    this.ySpeed = (int) random(-30, 30);
    gravity = .35;
  } //End of Constructor

  //Procedures or Functions
  void draw() {

  fill(c);
  ellipse(x, y, diameter, diameter);
  }

  void step() {
    //Increasing x & y by their speeds so the ball moves
    x += xSpeed;
    y += ySpeed;
    if(x < 0+this.diameter || x > width-this.diameter) {
      xSpeed *= -1;
    }
    //Changing Gravity of the firework, not changing the origonal position
    //Important concept, even though math works
    ySpeed += gravity;
  }
    
void mouseClicked() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework (width, height);
  }
}


}

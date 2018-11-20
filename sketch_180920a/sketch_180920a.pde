Firework[] fireworks = new Firework[25]; //Needs to include static variable
Boolean start = false;

int ballSize =       12;         // how big to make the ball
int paddleWidth =    12;         // size of the paddle
int paddleHeight =   100;
float playerSpeed =  15.0;       // how fast do the paddles move?

float ballX, ballY;              // position of the ball onscreen
float ballSpeedX, ballSpeedY;    // speed (and direction) of the ball

float p1y, p2y;                  // player paddle position
int scoreP1, scoreP2;            // current score for both players

PFont font;                      // font for showing score

Ball ball1;
Ball ball2;
Paddle paddle1;
Paddle paddle2;

void setup() {
  size(500, 500);                   // set window size
  ball1 = new Ball();
  ball2 = new Ball();
  paddle1 = new Paddle(10, height/2);
  paddle2 = new Paddle(width-10, height/2);
  noStroke();                       // no outlines


  // initialize variables
  ballX =             width/2;      // set ball to center of screen
  ballY =             height/2;
  ballSpeedX =        2.0;          // move ball to the right at a 45º angle
  ballSpeedY =        1.5;
  p1y = p2y =         height/2;     // set paddles at the center of the screen
  scoreP1 = scoreP2 = 0;            // start score at 0 for both players

  // setup font for displaying score
  font = createFont("Helvetica", 72);    // font name and size
  textFont(font, 72);
  
  //setup for fireworks
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework(width, height);
  }
}


void draw() {
  // clear the screen every frame, draw the playing field and score



  if ((scoreP1 > 9 && scoreP2 < scoreP1) ||( scoreP2 > 9 && scoreP1 < scoreP2)) {
        //code for drawing fireworks
      for (int i=0; i < fireworks.length; i++) {
    fireworks[i].step(); //Calculate Arithmetic
    fireworks[i].draw(); //Draw to the Canvas
  } 
  

    //Code to change "Start" Boolean Variable to true & to Quit the game
  } else {
    background(0);
    fill(255, 100);
    rect(width/2 - 3, 0, 6, height);
    textAlign(LEFT, CENTER);


    // draw the ball, update its position
    fill(255);
    paddle1.display();
    paddle2.display();
    paddle2.update();
    paddle1.y = mouseY;
    paddle1.update();
    ball1.display();
    ball2.display();
    ball2.update();
    ball1.update();
    scoreBoard();
  }
}


// player 2 uses the arrow keys to move the paddle
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle2.y -= 15;
    }
    if (keyCode == DOWN) {
      paddle2.y += 15;
  }
  
}
}

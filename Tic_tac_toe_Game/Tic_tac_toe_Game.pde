//Variables, no call needed for variables-only
int game = 0;
String easy = "Easy", medium = "Average", master = "Master", quit = "QUIT", p1 = "P1", p2 = "P2", x = "X", o = "O"; // Lists all fonts avaiable on system
int xWin = 0, oWin = 0, count = 0, position;
Boolean [] noDraw = new Boolean[9];
PFont xoFont, levelFont, playerFont, scoreFont;

void setup() {
  size(500, 600); //To Illustrate use of Display Geometry
  //fullScreen(); //uses displayWidth and displayHeight
  //println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  //println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
  //String[] fontList = PFont.list(); //To list all fonts available on system
  //printArray(fontList); // for listing all possible fonts to choose from, then createFontprintArray(fontList); 
//Font create
xoFont = createFont ("BellMT", 48); //Copy spelling from CreateFont, press OK in CreateFont to creat Data Folder
levelFont = createFont ("Ravie", 48);
playerFont = createFont ("BradleyHandITC-48.vlw", 48);
scoreFont = createFont ("Rockwell", 48);
  background(0);
  
  quitButtonSetup();
  
    for(int i=0; i < noDraw.length; i++) {
    noDraw[i] = false;
  }
  
  //Main Divisions
  stroke(255);
  strokeWeight(4);
  line(width*1/3, height/4, width*1/3, height);
  strokeWeight(4);
  line(width*2/3, height/4, width*2/3, height);
  
  strokeWeight(4);
  line(0, height*1/4, width, height*1/4);
  strokeWeight(4);
  line(0, height*1/2, width, height*1/2);
  strokeWeight(4);
  line(0, height*3/4, width, height*3/4);
  
  strokeWeight(4);
  line(width*1/500, height/4, width*1/500, height);
  strokeWeight(4);
  line(width*498/500, height/4, width*498/500, height);
  strokeWeight(4);
  line(0, height*598/600, width, height*598/600);
  
  //E, M, D Buttons
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (levelFont, width*1/20);
  text (easy, 0, 0, width*1/3, height*1/12);
  fill(#4BFC00);
  textAlign (CENTER, CENTER);
  textFont (levelFont, width*1/20);
  text (medium, width*1/3, 0, width*1/3, height*1/12);
  fill(#FF0004);
  textAlign (CENTER, CENTER);
  textFont (levelFont, width*1/20);
  text (master,width*2/3, 0, width*1/3, height*1/12);
  
  //Scoreboard
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, 0, height*1/12, width*1/3, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*2/3, height*1/12, width*1/3, height*1/12);
  
  
  //Buttons in the 3x3 Board
  //line(width*1/24, height*7/24, width*1/24, height*11/24); //Square in #1
  //strokeWeight(-0);
  //fill(0);
  //rect(width*0/24, height*6/24, width*16/24, height*6/24); //Square in #1
  //rect(width*8/24, height*6/24, width*16/24, height*6/24); //Square in #2
  //rect(width*16/24, height*6/24, width*16/24, height*6/24); //Square in #3
  //rect(width*0/24, height*12/24, width*16/24, height*6/24); //Square in #4
  //rect(width*8/24, height*12/24, width*16/24, height*6/24); //Square in #5
  //rect(width*16/24, height*12/24, width*16/24, height*6/24); //Square in #6
  //rect(width*0/24, height*18/24, width*16/24, height*6/24); //Square in #7
  //rect(width*8/24, height*18/24, width*16/24, height*6/24); //Square in #8
  //rect(width*16/24, height*18/24, width*16/24, height*6/24); //Square in #9
}

void draw () {
  quitButtonDraw();
  xoTextDraw();
}

void mouseClicked() {
  quitButtonMouseClicked();
  xoButtonDraw();
}

private ArrayList<Shape> shapes = new ArrayList<Shape>();
Rectangle rHex;
Rectangle rRGB;
Circle ePub;
Circle cHex;



public void setup(){
  size (500, 500);
  
  rHex = new Rectangle(width-width*1/20,height*1/4, width*1/20,height*1/3, #2100FF );
  rRGB = new Rectangle(0, height*1/4, width*1/20, height*1/3, #FF0000);
  ePub = new Circle(width*1/2, height*1/4, width*1/6, color(random(255), random(255), random(255)));
  cHex = new Circle(width*1/4, height*1/2, width*1/6, color(random(255), random(255), random(255)));
  //Local Object
  //Rectangle rHex = new Rectangle(width-width*1/20,height*1/4, width*1/20,height*1/3, #05FFD3);
  //Rectangle rRGB = new Rectangle(0, height*1/4, width*1/20, height*1/3, color(random(255), random(255), random(255)));
  //Circle  ePub = new Circle(width*1/2, height*1/2, width*1/5, height*1/4, #FF0000);
  //Circle cHex = new Circle(width*1/4, height*1/2, width*1/4, height*1/4, #1B08FF);
  
  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(ePub);
  shapes.add(cHex);

}

public void draw(){
  background (0);
  
  //Draw Static shapes
  for (int i = 0; i<shapes.size(); i++) {
  shapes.get(i).draw();
}


  ePub.step();
  cHex.step();
  rRGB.mouseMove(mouseY);
  
}
public void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
      rHex.move(1);
    }
    if(keyCode == DOWN) {
      rHex.move(2);
    }
  
  }
}
public void keyReleased() {
  if(key == CODED) {
    if(keyCode == UP) {
      rHex.move(0);
    }
    if(keyCode == DOWN) {
      rHex.move(0);
    }
  
  }
}

abstract class Shape {
  public float x;
  public float y;

  private Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  abstract void draw();
  
}

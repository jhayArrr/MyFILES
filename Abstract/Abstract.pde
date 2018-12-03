private ArrayList<Shape> shapes = new ArrayList<Shape>();
Circle ePub;


  Shape triangle = new Shape (0, 0) {
  void draw () {
    fill (random(255),random(255), random(255) );
    triangle (x, y, x-10, y+10, x+ 10, y+10);
  }
}
;



public void setup(){
  size (500, 500);
  
  Rectangle rHex = new Rectangle(width-width*1/20,height*1/4, width*1/20,height*1/3, #05FFD3);
  Rectangle rRGB = new Rectangle(0, height*1/4, width*1/20, height*1/3, color(random(255), random(255), random(255)));
  ePub = new Circle(width*1/2, height*1/4, width*1/4, height*1/4, #1B08FF);
  //Local Object
  //Circle  ePub = new Circle(width*1/2, height*1/2, width*1/5, height*1/4, #FF0000);
  
  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(ePub);
  shapes.add(triangle);

}

public void draw(){
  background (0);
  
  //Draw Static shapes
  for (int i = 0; i<shapes.size(); i++) {
  shapes.get(i).draw();
}


  //moving Circle
  ePub.step();
  shapes.get(2).draw();
  

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

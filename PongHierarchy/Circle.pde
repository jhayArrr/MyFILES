class Circle extends Shape {
  private float xdiameter;
  private float ydiameter;
  private float width;
  private float height;
  private color c;

  
  private Circle (float width, float height, float xdiameter, float ydiameter, color c) {
    super (width, height);
    this.xdiameter = xdiameter;
    this.ydiameter = ydiameter;
    this.width = width;
    this.height = height;
    this.c = c;
  }
  
  public void draw(){
    fill(c);
    ellipse(width, height, xdiameter, ydiameter);
  }
  
  private void step() {
  height++; width++;
  }
  
  private void update() {
  height--; width ++;  
  }
  
  private void bounce() {
    
    
  }
  
 
}

class Circle extends Shape {
  private float diameter;
  private float width;
  private float height;
  private color c;
  

  
  private Circle (float width, float height, float diameter, color c) {
    super (width, height);
    this.diameter = diameter;
    this.width = width;
    this.height = height;
    this.c = c;
  }
  
  public void draw(){
    fill(c);
    ellipse(width, height, diameter, diameter);
   
  }
  
  private void step1() {
  height++; width++;
  }
  
  private void step2() {
  height--; width ++;  
  }
  
  private void bounce() {

    
    
  }
  
 
}

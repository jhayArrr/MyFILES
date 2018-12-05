class Circle extends Shape {
  private float diameter;
  private color c;
  

  
  private Circle (float x, float y, float diameter, color c) {
    super (x, y);
    this.diameter = diameter;
    this.c = c;
  }
  
  public void draw(){
    fill(c);
    ellipse(x, y, diameter, diameter);
   
  }
  
  private void step() {
  y++; x++;
  }
  
  private void bounce() {
    if (y > height) {
    y *= -1; x *= -1; }
    
    if (y < 0) {
    y *= -1; x *= -1;}
    
    
  }
  
 
}

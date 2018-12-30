private class Button {
  float x, y, h;
  String word;
  int wordLength;
  int textsize = 50;
  float boxwidth;
  Button(float  x, float y, String word) {
    this.x = x;
    this.y = y;
    this.h = 55;
    this.word = word;
    this.wordLength = word.length();
    this.boxwidth =(sq(textsize)*(this.wordLength))/75;
  }
  //run update first then do display
  void show() {

    if (isHover()) {
      fill(255);
      rectMode(CENTER);
      rect(this.x, this.y, this.boxwidth, this.h);
      fill(0);
    } else {
      fill(255);
    }
    textFont(scoreFont);
    textSize(50);
    textAlign(CENTER, CENTER);
    textSize(textsize);
    text(this.word, this.x, this.y);
  }


  private boolean isHover() {
    return mouseX >= this.x-this.boxwidth/2 && mouseX <= this.x+this.boxwidth/2 && mouseY >= this.y-this.h/2 && mouseY <= this.y + this.h/2;
  }
  private boolean isPressed() {
    if (isHover() && mousePressed) {
      return true;
    } else {
      return false;
    }
  }
}

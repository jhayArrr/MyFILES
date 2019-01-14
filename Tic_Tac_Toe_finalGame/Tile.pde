void circle(int box) {
  if (start == true) {
  int x1 = 0, x2 = 0, y1 = 0, y2 = 0;
  switch(box) {
  case 0: 
    x1 = width*1/8; 
    y1 = height*7/24; 
    x2 = width*3/8; 
    y2 = height*1/2;
    break;
  case 1: 
    x1 = width*3/8; 
    y1 = height*7/24; 
    x2 = width*5/8; 
    y2 = height*1/2;
    break;
  case 2: 
    x1 = width*5/8; 
    y1 = height*7/24; 
    x2 = width*7/8; 
    y2 = height*1/2;
    break;
  case 3: 
    x1 = width*1/8; 
    y1 = height*1/2; 
    x2 = width*3/8; 
    y2 = height*17/24;
    break;
  case 4: 
    x1 = width*3/8; 
    y1 = height*1/2; 
    x2 = width*5/8; 
    y2 = height*17/24;
    break;
  case 5: 
    x1 = width*5/8; 
    y1 = height*1/2; 
    x2 = width*7/8; 
    y2 = height*17/24;
    break;
  case 6: 
    x1 = width*1/8; 
    y1 = height*17/24; 
    x2 = width*3/8; 
    y2 = height*11/12;
    break;
  case 7: 
    x1 = width*3/8; 
    y1 = height*17/24; 
    x2 = width*5/8; 
    y2 = height*11/12;
    break;
  case 8: 
    x1 = width*5/8; 
    y1 = height*17/24; 
    x2 = width*7/8; 
    y2 = height*11/12;
    break;
  }
  stroke(0);
  strokeWeight(2);
  fill(#FA6567);//red
  rect(x1 + (x2 - x1) / 100, y1 + (y2 - y1) / 100, 125, 125);
}
}

void cross(int box) {
  if (start == true) {
  int x1 = 0, x2 = 0, y1 = 0, y2 = 0;
  switch(box) {
    case 0: 
    x1 = width*1/8; 
    y1 = height*7/24; 
    x2 = width*3/8; 
    y2 = height*1/2;
    break;
  case 1: 
    x1 = width*3/8; 
    y1 = height*7/24; 
    x2 = width*5/8; 
    y2 = height*1/2;
    break;
  case 2: 
    x1 = width*5/8; 
    y1 = height*7/24; 
    x2 = width*7/8; 
    y2 = height*1/2;
    break;
  case 3: 
    x1 = width*1/8; 
    y1 = height*1/2; 
    x2 = width*3/8; 
    y2 = height*17/24;
    break;
  case 4: 
    x1 = width*3/8; 
    y1 = height*1/2; 
    x2 = width*5/8; 
    y2 = height*17/24;
    break;
  case 5: 
    x1 = width*5/8; 
    y1 = height*1/2; 
    x2 = width*7/8; 
    y2 = height*17/24;
    break;
  case 6: 
    x1 = width*1/8; 
    y1 = height*17/24; 
    x2 = width*3/8; 
    y2 = height*11/12;
    break;
  case 7: 
    x1 = width*3/8; 
    y1 = height*17/24; 
    x2 = width*5/8; 
    y2 = height*11/12;
    break;
  case 8: 
    x1 = width*5/8; 
    y1 = height*17/24; 
    x2 = width*7/8; 
    y2 = height*11/12;
    break;
  }
  strokeWeight(2);
  stroke(0);
  fill(#ED7ADE); //Purple
  rect(x1 + (x2 - x1) / 100, y1 + (y2 - y1) /100, 125, 125);
}
}

void drawScore() {
  if(againstPC == false) {
  textFont(scoreFont, width/17.5);
  textAlign(RIGHT);
  fill(255);
  text(scoreP1, width/2-width/3-2, height/4-2);

  textAlign(LEFT);
  fill(255);
  text(scoreP2, width/2+width/2.6-2,height/4-2);
  }
    if(againstPC == true) {
  textFont(scoreFont, width/17.5);
  textAlign(RIGHT);
  fill(255);
  text(scoreP1, width/2-width/3-2, height/4-2);
  textAlign(LEFT);
  fill(255);
  text(scorePC, width/2+width/2.6-2,height/4-2);
    }
}

void score () {
   if ( (image[0] == 'X' && image[1] == 'X' && image[2] == 'X') ||
    (image[0] == 'X' && image[4] == 'X' && image[8] == 'X') ||
    (image[0] == 'X' && image[3] == 'X' && image[6] == 'X') ||
    (image[1] == 'X' && image[4] == 'X' && image[7] == 'X') ||
    (image[2] == 'X' && image[4] == 'X' && image[6] == 'X') ||
    (image[2] == 'X' && image[5] == 'X' && image[8] == 'X') ||
    (image[3] == 'X' && image[4] == 'X' && image[5] == 'X') ||
    (image[6] == 'X' && image[7] == 'X' && image[8] == 'X')) scoreP2++;
    
   if ((image[0] == 'O' && image[1] == 'O' && image[2] == 'O') ||
    (image[0] == 'O' && image[4] == 'O' && image[8] == 'O') ||
    (image[0] == 'O' && image[3] == 'O' && image[6] == 'O') ||
    (image[1] == 'O' && image[4] == 'O' && image[7] == 'O') ||
    (image[2] == 'O' && image[4] == 'O' && image[6] == 'O') ||
    (image[2] == 'O' && image[5] == 'O' && image[8] == 'O') ||
    (image[3] == 'O' && image[4] == 'O' && image[5] == 'O') ||
    (image[6] == 'O' && image[7] == 'O' && image[8] == 'O')) scoreP1++;
   
   if (againstPC == true) { 
   if ((image[0] == 'O' && image[1] == 'O' && image[2] == 'O') ||
    (image[0] == 'O' && image[4] == 'O' && image[8] == 'O') ||
    (image[0] == 'O' && image[3] == 'O' && image[6] == 'O') ||
    (image[1] == 'O' && image[4] == 'O' && image[7] == 'O') ||
    (image[2] == 'O' && image[4] == 'O' && image[6] == 'O') ||
    (image[2] == 'O' && image[5] == 'O' && image[8] == 'O') ||
    (image[3] == 'O' && image[4] == 'O' && image[5] == 'O') ||
    (image[6] == 'O' && image[7] == 'O' && image[8] == 'O')) scoreP1++;
    
    if((image[0] == 'X' && image[4] == 'X' && image[8] == 'X') ||
    (image[0] == 'X' && image[3] == 'X' && image[6] == 'X') ||
    (image[1] == 'X' && image[4] == 'X' && image[7] == 'X') ||
    (image[2] == 'X' && image[4] == 'X' && image[6] == 'X') ||
    (image[2] == 'X' && image[5] == 'X' && image[8] == 'X') ||
    (image[3] == 'X' && image[4] == 'X' && image[5] == 'X') ||
    (image[6] == 'X' && image[7] == 'X' && image[8] == 'X')) scorePC++;
   }
}

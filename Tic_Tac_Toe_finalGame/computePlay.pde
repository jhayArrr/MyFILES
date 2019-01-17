void computePlay() { //computer attack movements
  if (image[0] == 'X') {
    if (image[1] == 'X' && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if (image[2] == 'X' && !checked[1]) {
      cross(1);
      nClicks++;
      checked[1] = true;
      image[1] = 'X';
      odd = !odd;
      return;
    }
    if (image[4] == 'X' && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'X' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
    if (image[3] == 'X' && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'X' && !checked[3]) {
      cross(3);
      nClicks++;
      checked[3] = true;
      image[3] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[1] == 'X') {
    if (image[2] == 'X' && !checked[0]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
    if (image[4] == 'X' && !checked[7]) {
      cross(7);
      nClicks++;
      checked[7] = true;
      image[7] = 'X';
      odd = !odd;
      return;
    }
    if (image[7] == 'X' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[2] == 'X') {
    if (image[4] == 'X' && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'X' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
    if (image[5] == 'X' && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'X' && !checked[5]) {
      cross(5);
      nClicks++;
      checked[5] = true;
      image[5] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[3] == 'X') {
    if (image[4] == 'X' && !checked[5]) {
      cross(5);
      nClicks++;
      checked[5] = true;
      image[5] = 'X';
      odd = !odd;
      return;
    }
    if (image[5] == 'X' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'X' && !checked[0]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[4] == 'X') {
    if (image[5] == 'X' && !checked[3]) {
      cross(3);
      nClicks++;
      checked[3] = true;
      image[3] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'X' && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if (image[7] == 'X' && !checked[1]) {
      cross(1);
      nClicks++;
      checked[1] = true;
      image[1] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'X' && !checked[0]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[5] == 'X') {
    if (image[8] == 'X' && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[6] == 'X') {
    if (image[7] == 'X' && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'X' && !checked[7]) {
      cross(7);
      nClicks++;
      checked[7] = true;
      image[7] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[7] == 'X') {
    if (image[8] == 'X' && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[0] == 'O') {
    if (image[1] == 'O' && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if (image[2] == 'O' && !checked[1]) {
      cross(1);
      nClicks++;
      checked[1] = true;
      image[1] = 'X';
      odd = !odd;
      return;
    }
    if (image[4] == 'O' && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'O' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
    if (image[3] == 'O' && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'O' && !checked[3]) {
      cross(3);
      nClicks++;
      checked[3] = true;
      image[3] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[1] == 'O') {
    if (image[2] == 'O' && !checked[0]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
    if (image[4] == 'O' && !checked[7]) {
      cross(7);
      nClicks++;
      checked[7] = true;
      image[7] = 'X';
      odd = !odd;
      return;
    }
    if (image[7] == 'O' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[2] == 'O') {
    if (image[4] == 'O' && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'O' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
    if (image[5] == 'O' && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'O' && !checked[5]) {
      cross(5);
      nClicks++;
      checked[5] = true;
      image[5] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[3] == 'O') {
    if (image[4] == 'O' && !checked[5]) {
      cross(5);
      nClicks++;
      checked[5] = true;
      image[5] = 'X';
      odd = !odd;
      return;
    }
    if (image[5] == 'O' && !checked[4]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'O' && !checked[0]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[4] == 'O') {
    if (image[5] == 'O' && !checked[3]) {
      cross(3);
      nClicks++;
      checked[3] = true;
      image[3] = 'X';
      odd = !odd;
      return;
    }
    if (image[6] == 'O' && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if (image[7] == 'O' && !checked[1]) {
      cross(1);
      nClicks++;
      checked[1] = true;
      image[1] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'O' && !checked[0]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[5] == 'O') {
    if (image[8] == 'O' && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[6] == 'O') {
    if (image[7] == 'O' && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if (image[8] == 'O' && !checked[7]) {
      cross(7);
      nClicks++;
      checked[7] = true;
      image[7] = 'X';
      odd = !odd;
      return;
    }
  }

  if (image[7] == 'O') {
    if (image[8] == 'O' && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[0] == 'X') {
    if(!checked[1] && !checked[2]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[3] && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[4] && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[2] == 'X') {
    if(!checked[0] && !checked[1]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[4] && !checked[6]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[5] && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[6] == 'X') {
    if(!checked[0] && !checked[3]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[2] && !checked[4]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[7] && !checked[8]) {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[8] == 'X') {
    if(!checked[0] && !checked[4]) {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[2] && !checked[5]) {
      cross(2);
      nClicks++;
      checked[2] = true;
      image[2] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[6] && !checked[7]) {
      cross(6);
      nClicks++;
      checked[6] = true;
      image[6] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if (!checked[4]) {
    cross(4);
    nClicks++;
    checked[4] = true;
    image[4] = 'X';
    odd = !odd;
    return;
  }
  
  if(image[0] == 'O') {
    if(!checked[5] && !checked[6] && image[7] == 'O') {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
  }
  
  if(image[2] == 'O') {
    if(!checked[5] && !checked[8] && image[7] == 'O') {
      cross(8);
      nClicks++;
      checked[8] = true;
      image[8] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[0] && !checked[1] && image[3] == 'O') {
      cross(0);
      nClicks++;
      checked[0] = true;
      image[0] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[0] && !checked[1]) {
      cross(1);
      nClicks++;
      checked[1] = true;
      image[1] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[5] && !checked[8]) {
      cross(5);
      nClicks++;
      checked[5] = true;
      image[5] = 'X';
      odd = !odd;
      return;
    }
    if(!checked[4] && !checked[6]) {
      cross(4);
      nClicks++;
      checked[4] = true;
      image[4] = 'X';
      odd = !odd;
      return;
    }
  }

  for (int i = 0; i < 8; i++) {
    if (!checked[i]) {
      cross(i);
      nClicks++;
      checked[i] = true;
      image[i] = 'X';
      odd = !odd;
      return;
    }
  }
}

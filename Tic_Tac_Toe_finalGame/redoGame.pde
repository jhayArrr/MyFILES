void redoGame() {
  if (nClicks == 9 || win) {
  stroke(255);
  strokeWeight(1);
  fill(255); 
  textFont(scoreFont, height*1/20);
  text("GAME ENDED", width*1/2, height*1/2.5);
  quitButtonDraw();
  restartButtonDraw(); 
  score();
                   
      //Showboard
  if(start==true && againstPC == true) {    
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*75/100, height*1/7, width*1/4, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (pr, width*0/100, height*1/5.5, width*1/4, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (c, width*75/100, height*1/5.5, width*1/4, height*1/12);
  }
  else if(start == true && againstPC == false) {
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*75/100, height*1/7, width*1/4, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (r, width*0/100, height*1/5.5, width*1/4, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (p, width*75/100, height*1/5.5, width*1/4, height*1/12);
  }
  
  //tictactoe background
  fill(#F2E6E6);
  textFont (levelFont, height/15);
  text("TIC-TAC-TOE", width/1.98, height*1/12.02);
  
    }
    winCheck();
    if (againstPC && !win && !odd) computePlay();
    
   //single 
  if (win == true) {
  stroke(255);
  strokeWeight(1);
  fill(255); 
  textFont(scoreFont, height*1/20);
  text("GAME ENDED", width*1/2, height*1/2.5);
  quitButtonDraw();
  restartButtonDraw(); 
  score();
                   
          //Showboard
  if(start==true && againstPC == true) {    
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*75/100, height*1/7, width*1/4, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (pr, width*0/100, height*1/5.5, width*1/4, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (c, width*75/100, height*1/5.5, width*1/4, height*1/12);
  }
  else if(start == true && againstPC == false) {
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*75/100, height*1/7, width*1/4, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (r, width*0/100, height*1/5.5, width*1/4, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (p, width*75/100, height*1/5.5, width*1/4, height*1/12);
  }
  
  
  //tictactoe background
  fill(#F2E6E6);
  textFont (levelFont, height/15);
  text("TIC-TAC-TOE", width/1.98, height*1/12.02);
  
    }
    winCheck();
    

  //double
  if (nClicks == 9 && win == false) {
  stroke(255);
  strokeWeight(1);
  fill(255); 
  textFont(scoreFont, height*1/20);
  text("GAME ENDED", width*1/2, height*1/2.5);
  quitButtonDraw();
  restartButtonDraw(); 
  score();  
  //Showboard
  if(start==true && againstPC == true) {    
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*75/100, height*1/7, width*1/4, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (pr, width*0/100, height*1/5.5, width*1/4, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (c, width*75/100, height*1/5.5, width*1/4, height*1/12);
  }
  else if(start == true && againstPC == false) {
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p1, width*0/100, height*1/7, width*1/4, height*1/12);
  fill(#00FFDF);
  textAlign (CENTER, CENTER);
  textFont (playerFont, width*1/25);
  text (p2, width*75/100, height*1/7, width*1/4, height*1/12);
  
  //showboard2
  fill(#FA6567);
  textFont (playerFont, width*1/25);
  text (r, width*0/100, height*1/5.5, width*1/4, height*1/12);
  fill(#ED7ADE);
  textFont (playerFont, width*1/25);
  text (p, width*75/100, height*1/5.5, width*1/4, height*1/12);
  }
  
  
  //tictactoe background
  fill(#F2E6E6);
  textFont (levelFont, height/15);
  text("TIC-TAC-TOE", width/1.98, height*1/12.02);
  
    }
    winCheck();

}

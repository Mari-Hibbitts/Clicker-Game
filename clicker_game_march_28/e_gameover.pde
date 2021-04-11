void gameover() {

  background(190, 0, 0);
  image(img4, 400, 300);
  fill(0);
  textSize(70);
  text("GAME OVER", 400, 100);
  text("HIGHSCORE:" + highscore, 400, 400);
  fill(255);
  rect(337, 500, 125, 70, 7);
  fill(0);
  textSize(19);
  text("RESTART", 400, 530);
}

void gameoverClicks() {
  if (mouseX > 337 && mouseX < 552 && mouseY > 500 && mouseY < 570) {
    mode = INTRO;
    lives = 3;
    score = 0;
    vx = 2.5;
    vy = 2.5;
    x = width/2;
    y = height/2;
    d = 100;
  }
}

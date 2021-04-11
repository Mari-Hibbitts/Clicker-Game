void game() {
  background(#B7C7CE);

  fill(#B698BF);
  strokeWeight(3);
  stroke(#8C7F90);

  //target

  if (f1 == true) {
    circle(x, y, d);

    image(img1, x-5, y-6, d, d);
    f2 = false;
    f3 = false;
  }
  if (f2 == true) {
    circle(x, y, d);

    image(img2, x-5, y-6, d, d);
    f1 = false;
    f3 = false;
  }

  if (f3 == true) {
    circle(x, y, d);

    image(img3, x-5, y-6, d, d);
    f2 = false;
    f1 = false;
  }




  //text
  fill(0);
  textSize(30);                                        
  text("Score: " + score, 80, 40);
  text("Lives: " + lives, 80, 80);

  //pause button
  rect(720, 40, 50, 50);
  stroke(255);
  line(737, 50, 737, 80);
  line(753, 50, 753, 80);


  //moving target
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < 0 + d/2 || x > width -d/2) {
    vx = vx * -1;
  }

  if (y < 0 + d/2 || y > height - d/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    minim = new Minim (this);
    points = minim.loadFile("points.mp3");
    points.play();
    vx = vx * 1.08;
    vy = vy * 1.08;
    if (score > highscore){
    highscore = score;
    }
  } else  if (mouseX > 720 && mouseX < 770 && mouseY > 50 && mouseY < 100) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    if (lives == 0) {
      mode = GAMEOVER;
      minim = new Minim (this);
    lose = minim.loadFile("lose.mp3");
    lose.play();
    }
  }
}

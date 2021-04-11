void intro() {
  background(#9AC19E);
  image(img5, 400, 400);
  fill(255);
  rect(275, 375, 250, 70, 10);
  fill(0);
  textSize(100);

  text("Clicker Game", 400, 200);
  textFont(font1);
  text("START", width/2, 400);
  fill(255);
  rect(275, 460, 250, 70, 10);
  fill(0);

  text("OPTIONS", 400, 490);
}

void introClicks() {
  if (mouseX > 275 && mouseX < 525 && mouseY > 375 && mouseY < 445) {
    mode = GAME;
  }

  if (mouseX > 275 && mouseX < 525 && mouseY > 460 && mouseY < 520) {
    mode = OPTIONS;
  }
}

void pause() {
  textSize(50);
  text("PAUSED", 412, 300);
}

void pauseClicks() {
  if (mouseX > 720 && mouseX < 770 && mouseY > 50 && mouseY < 100) {
    mode = GAME;
  }
}

void options () {
  background(#B9B3F2);
  strokeWeight(4);
  fill(0);
  stroke(0);
  line(225, 400, 590, 400);
  circle(sliderX, 400, 40);
  fill(255);
  stroke(255);
  rect(300, 450, 200, 80, 7);
  fill(0);
  text("back", 400, 488);

  //image selection buttons 
  fill(255);
  stroke(255);
  tactile(10, 210, 50, 250);
  rect(10, 50, 200, 200, 7);
  stroke(255);
  tactile(300, 500, 50, 250);
  rect(300, 50, 200, 200, 7);
  stroke(255);
  tactile(590, 790, 50, 250);
  rect(590, 50, 200, 200, 7);
  image(img1, 100, 140, d, d);
  image(img2, 400, 140, d, d);
  image(img3, 700, 140, d, d);
}

void optionsClicks() {
  if (mouseX > 225 && mouseX < 590 && mouseY > 385 && mouseY < 415) {
    sliderX = mouseX;
    d =  map(sliderX, 225, 590, 0, 500);
  }

  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 530) {
    mode = INTRO;
    sliderX = 350;
  }
  //switch target 
  if (mouseX > 10 && mouseX < 210 && mouseY > 50 && mouseY < 250) {
    f1 = true;
  }

  if (mouseX > 300 && mouseX< 500 && mouseY < 50 && mouseY < 250) {

    f2 = true;
  }

  //rect(590, 50, 200, 200, 7);
  if (mouseX > 590 && mouseX < 790 && mouseY > 50 && mouseY < 250) {
    f3 = true;
    f1 = false;
    f2 = false;
  }
}

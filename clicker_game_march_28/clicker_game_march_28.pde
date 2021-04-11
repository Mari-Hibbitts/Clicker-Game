//Marika Hibbitts, BLK 1-4, April 1


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim ;
AudioPlayer points;
AudioPlayer lose;


//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//scoring 
int highscore;

//font
PFont font1;

//image
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

//images
boolean f1, f2, f3;


float x, y, d;
float vx, vy;  //target velocity
int score, lives;

//slider
float sliderX;


void setup() {

  //score 
  highscore = 0;
  imageMode(CENTER);
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  //images
  img1 = loadImage("flower1.png");
  img2 = loadImage("flower2.png");
  img3 = loadImage("flower3.png");
  img4 = loadImage("gameover.png");
  img5 = loadImage("intro1.png");




  //font
  font1 = createFont("font1.ttf", 30);

  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;

  //slider 
  sliderX = 350;

  f2 = true;
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}

void tactile(int a, int b, int c, int d) {
  if (mouseX > a && mouseX < b && mouseY > c && mouseY < d) {
    stroke(#B9B3F2);
  } else {
    stroke(255);
  }
}

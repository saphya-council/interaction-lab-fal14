////video record-->erase data when new recording is saved
//////MARGE: make a patch that does this ^^^ record input, save input, play old input while recording new input, erase old input & use new input
////time for recording should match time of song instrumental music/lyrics showing
//////SAPHYA: make a recording limit, play music while playing video while showing subtitles, ONLY video changes
////arduino should control start and volume up/down functions
//
////when video is chosen, audio+video+text

//import codeanticode.gsvideo.*;
import processing.video.*;
import ddf.minim.*;

Capture cam;

Movie mov;

//Timer timer;

//GSMovieMaker mm;
//GSMovie mov;

Minim minim;
AudioPlayer song;

//float mt = mov.time();
int fps = 30;
PFont s;
PFont subs;
int stage = 1;
int startTime;
//int timer[] = {
//  minute(), second()
//  };


//class Timer {
//  int savedTime;
//  int totalTime;
//  
//  Timer(int totalTime){
//    totalTime = totalTime;
//  }
//}

void setup() {

  size(1280, 720);
  frameRate(fps);
  cam = new Capture(this, 1280, 720);
  cam.start();
  minim = new Minim(this);
  // timer= new Timer(215040);
  song = minim.loadFile("i want it that way.mp3");
  //this is where you'll make your seizure menu
  s = loadFont("OCRAExtended-48.vlw");
  subs = loadFont("HGPHeiseiKakugothictaiW5-38.vlw");
}

void draw() {
  if (stage == 1) {
    smooth();
    noStroke();
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect(0, 0, 1280, 720);
    fill(255);
    text("CHAIN KARAOKE ASDFGHJKL", 640, 50);
    text("Press 'ENTER' to start", 640, 150);
    textFont(s);
    textAlign(CENTER, CENTER);
  } else if (stage == 2) {
    //timer.start();
    song.play();
    subs();
    if (cam.available() == true) {
      //subs();
      cam.read();
      image(cam, 0, 0);
      filter(GRAY);
    }
    //    savedTime = millis();
    //    println("timer started at" + savedTime);

    println(millis()/1000);

    //NEED TO ADD DELAY OF 1000 MILLIS TO FIX BLINKING AND FIND A WAY TO RESET TIME

    //    println(timer[0] + ":" + timer[1]);
    //    timer[0] = minute();
    //    timer[1] = second();

    //if (timer[0] == 3 & timer[1] == 35) {
    if (millis() >= 215040) {
      //      //    // Finish the movie if space bar is pressed
      cam.stop();
      //      //    // Quit running the sketch once the file is written
      stage = 1;
    } 
    //    else if (stage == 3) {
    //      println("stage 3");
    //      mov = new GSMovie(this, "karaoke.ogg");
    //      mov.play(); 
    //      println(mov.duration());
    //    }
  }
}

void keyReleased() {
  if (key == '\n' ) {
    //mov.start();
    startTime = millis();
    stage = 2;
    cam.start();
    song.cue(0);
    song.play();
  } else if (key == '\b') {
    song.pause();
    cam.stop();
    stage = 1;
  }
  //  else if (key == '\b') {
  //    stage = 3;
  //  }
}


PFont f;
PFont g;
String saved = "";
int bx = 200;
int by = 100;
int rectSizex = 200;
int rectSizey = 65;
int r = 9;
boolean overBox = false;
boolean locked = false;
String[] fields = {
  "", "", "", ""
};
int selectedField = 0;

char[][] box = new char[3][9]; //3 boxes total. 9 characters each box. 
// i.e. the 3rd char of box 2 would be box[2][3]
int charCounter;

int[] calVal = new int[3];


void setup() {
  size (600, 950);
  background (255, 128, 0);
  smooth();
  f = loadFont("BerlinSansFB-Reg-40.vlw");
  g = loadFont("Consolas-12.vlw");
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(g);
  text("Please add a fruit to the text boxes below, then press 'CALCULATE!'", 300, 20); 
  text("to find out the total calories.", 300, 50);
  fill(255);
  textFont(g);
  text("Because this is an Alpha version, this application will only work for some fruits.", 300, 850);
  text("Serving is 100g.", 300, 880);
}

void draw() {


  menu();
  int a = whichBox();

  println("fields[selectedField] "+fields[selectedField]);
  if (fields[selectedField].equals("banana")) {
    calVal[selectedField] = 89;
    println(calVal);
  }
  if (fields[selectedField].equals("apple")) {
    calVal[selectedField] = 52;
    println(calVal);
  }
  if (fields[selectedField].equals("orange")) {
    calVal[selectedField] = 47;
    println(calVal);
  }
  if (fields[selectedField].equals("watermelon")) {
    calVal[selectedField] = 30;
    println(calVal);
  }
  if (fields[selectedField].equals("grapefruit")) {
    calVal[selectedField] = 42;
    println(calVal);
  }
  if (fields[selectedField].equals("kiwi")) {
    calVal[selectedField] = 61;
    println(calVal);
  }
  if (fields[selectedField].equals("lemon")) {
    calVal[selectedField] = 29;
    println(calVal);
  }
  if (fields[selectedField].equals("pear")) {
    calVal[selectedField] = 57;
    println(calVal);
  }
}


//need to have a list of the foods
//add addition/equal sign shapes
//edit quantity
//give option to add more rectangles
//range of output changes sprite reaction FINAL PROJECT EDITION
//sprite does tutorial to show how to use app-->animation FINAL PROJECT EDITION
//giggles when touched FINAL PROJECT EDITION


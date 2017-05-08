// What text to enter and When to erase and reset?

void keyPressed() {
  println(selectedField);
  if (key == '\n' ) {
    saved = fields[selectedField];
    fields[selectedField] = "";
  } else if (key == '\b' ) {
    fields[selectedField] = fields[selectedField].substring(0, max(0, fields[selectedField].length()-1));
    calVal[selectedField] = 0;
  } else {
    fields[selectedField] = fields[selectedField] + key;
    println(fields[selectedField]);
  }

  charCounter++;

  if (charCounter > 9) {
    charCounter = 0;
  }
}


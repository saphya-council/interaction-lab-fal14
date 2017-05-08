void calculateButton() {

  if (mouseX > 100-400 && mouseX < 100+400 && 
    mouseY > (by+165*3)-rectSizey && mouseY < (by+165*3)+rectSizey) {
    stroke(255, 255, 51);
    fill(255, 255, 51);
    rect (100, by+165*3, 400, rectSizey, 9);
    fill(178, 102, 255);
    textFont(f);
    text("CALCULATE!", 100, 595, 400, rectSizey);
    if (mousePressed) {
      stroke(255, 51, 51); 
      fill(255, 255, 0);
      rect (100, by+165*3, 400, rectSizey, 9);

      int calTotal = int (calVal[0] + calVal[1] +calVal[2]);

      fill(5, 5, 5);
      textFont(f);
      text(calTotal, 300, 627);
      println(calTotal);
    }
  } else {
    //  buttonOver (100, by+165*3);
    stroke(255, 51, 51); 
    fill(255, 255, 0);
    rect (100, by+165*3, 400, rectSizey, 9);
    fill(178, 102, 255);
    textFont(f);

    text("CALCULATE!", 100, 595, 400, rectSizey);
  }
}


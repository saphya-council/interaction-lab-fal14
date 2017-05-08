// interactive interface, highlight effects

// menu function, draws menu
void menu() {
  fill (255);
  isHovering(bx, by);
  rect (bx, by, rectSizex, rectSizey, r);
  fill(178, 102, 255);
  textFont(f);
  text(fields[0], bx, by, rectSizex, rectSizey);

  fill (255);
  isHovering(bx, by+165);
  rect (bx, by+165, rectSizex, rectSizey, r);
  fill(178, 102, 255);
  textFont(f);

  text(fields[1], bx, by+165, rectSizex, rectSizey);

  fill (255);
  isHovering(bx, by+165*2);
  rect (bx, by+165*2, rectSizex, rectSizey, r);
  fill(178, 102, 255);
  textFont(f);

  text(fields[2], bx, by+165*2, rectSizex, rectSizey);

  calculateButton();
}

// menu effect
boolean isHovering(int hx, int hy) { 
  if (mouseX > hx-rectSizex && mouseX < hx+rectSizex && 
    mouseY > hy-rectSizey && mouseY < hy+rectSizey) {
    overBox = true;  
    if (!locked) { 
      strokeWeight(2);
      stroke(0, 255, 128); 
      fill(255);
    }
  } else {
    stroke(255);
    fill(255);
    overBox = false;
  }
  return overBox;
}


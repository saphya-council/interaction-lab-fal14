// WHEN ARE WE ALLOWED TO ENTER TEXT?
// When and where to display entered text


// hover and click, generates a on/off switch
boolean isClicked(int cx, int cy) {
  boolean isSelected;
  if (mouseX > cx-rectSizex && mouseX < cx+rectSizex && 
    mouseY > cy-rectSizey && mouseY < cy+rectSizey) {
    isSelected = true;
  } else {
    isSelected = false;
  }
  return isSelected;
}

int whichBox() {
  //must do cursor appear
  if (isClicked(bx, by)) {
    selectedField = 0;
  } else if (isClicked(bx, by+165)) {
    selectedField = 1;
  } else if (isClicked(bx, by+165*2)) {
    selectedField = 2;
  } else if (isClicked(bx, by+165*3)) {
    selectedField = 3;
  }
  return selectedField;
}


void mousePressed() //ift. start-knappen.
{
  if (mouseX > buttonX && mouseX < buttonX+buttonW && mouseY > buttonY && mouseY < buttonY+buttonH)
    buttonPressed = true; 
}

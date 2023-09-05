void vaegge()
{
  rectMode(CORNER);
  fill(255, 255, 255);
  strokeWeight(2);

  //rammen om banen
  rect(100, 75, 1000, 625);
  fill(245, 245, 245);

  //øverst venstre
  rect(200, 175, 25, 100);
  rect(200, 175, 100, 25);

  //midten venstre
  rect(325, 300, 25, 175);
  rect(100, 375, 125, 25);

  //nederst venstre
  rect(200, 500, 25, 100);
  rect(200, 575, 100, 25);

  //øverst højre
  rect(975, 175, 25, 100);
  rect(900, 175, 100, 25);

  //midten højre
  rect(850, 300, 25, 175);
  rect(975, 375, 125, 25);

  //nederst højre
  rect(975, 500, 25, 100);
  rect(900, 575, 100, 25);

  //øverst midten
  rect(400, 175, 400, 25);
  rect(450, 300, 300, 25);

  //nederst midten
  rect(400, 575, 400, 25);
  rect(450, 450, 300, 25);
}

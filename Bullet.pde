//Bullet Skydesystem
void Bullet() {
  for (int i = myBullets.size()-1; i >= 0; i--)
  {

    Bullet myBullet = myBullets.get(i);

    myBullet.update();
    println(myBullet.timer);

    if (myBullet.finished())
    {
      myBullets.remove(i);
    }
  }
}

class Bullet { 
  int timer=350; //Tiden som kuglen eksisterer i programmet
  PVector pos, spd; //variabel erklæring for positionsvektoren(pos) og retningsvektoren ("farten" for kuglen)(spd)

  Bullet(PVector pos, PVector spd) //Bullet's constructor
  { 
    this.pos = pos; //Refererer til class Bullet's pos variabel, og sætten den lig med sig selv.
    this.spd = spd.mult(3); //Refererer til class Bullet's spd variabel, og sætten den lig med sig selv.

    pos.add(spd.copy().normalize().mult(39));
    //add() addiderer vektoren pos med den vektor, som står inden for adds paranteser, som sætter spd vektoren i relevans til pos vektoren, så de har en indflydelse på hinanden. add tilføjer desuden også en x og y koordinat, som bliver brugt på linje 38.
    //copy() laver en kopi af vektoren metoden er tilkoblet til, i dette tilfælde vektoren spd
    //normalize() "normaliserer" vektoren så den har en længde på 1, så den rent faktisk er håndterbar
    //mult() hvor meget vektoren ganges med. (I dette tilfælde ganges den med 39 for, at positionen for kuglens start bliver fra det ønskede sted (foran tankens kanontårn)
  }

  void update()
  {

    pos.add(spd); //Lægger spd vektoren til positionsvektoren (som der hele tiden bliver en ny position, og derfor  
    ellipse(pos.x, pos.y, 4, 4); //Kuglens x og y koordinater bliver bestemt ud far linje 27.

    //Alt collision for bullets
    //Collision detection med ydervægge 
    if (pos.x > 1100 || pos.x < 100) spd.x *= -1;
    if (pos.y > 700|| pos.y < 80) spd.y *= -1;

    //Collision med tank 1
    if (pos.x < tank1.x+19.5 &&  pos.y < tank1.y+22 && pos.x > tank1.x-19.5 &&  pos.y > tank1.y-22)
    {
      tank2score++; 

      for (int i = 0; i < 1; i++) 
      {
        reset();
      }
    }

    //Collision med tank 2
    if (pos.x<tank2.x+19.5 &&  pos.y < tank2.y+22 && pos.x > tank2.x-19.5 &&  pos.y > tank2.y-22)
    {
      tank1score++; //Hvis kuglen rammer tank 2 

      for (int i = 0; i < 1; i++) 
      {
        reset();
      }
    }


    //Collision med indervægge
    //Collision venstre side
    if (pos.x>198 && pos.x<227 && pos.y>273 && pos.y<277)spd.x *= -1;

    if (pos.x>198 && pos.x<202 && pos.y>173 && pos.y<277)spd.x *= -1;
    if (pos.x>223 && pos.x<227 && pos.y>175 && pos.y<277)spd.x *= -1;


    if (pos.x>198 && pos.x<302 && pos.y>173 && pos.y<177)spd.y *= -1;
    if (pos.x>198 && pos.x<302 && pos.y>198 && pos.y<202)spd.y *= -1;
    if (pos.x>298 && pos.x<302 && pos.y>173 && pos.y<202)spd.x *= -1;


    //rect(325, 300, 25, 175);
    if (pos.x > 323 && pos.x < 352 && pos.y > 298 && pos.y <302) spd.y *= -1;
    if (pos.x > 323 && pos.x < 352 && pos.y > 473 && pos.y <477) spd.y *= -1;

    if (pos.x > 323 && pos.x < 327 && pos.y > 298 && pos.y < 477) spd.x *= -1;
    if (pos.x > 348 && pos.x < 352 && pos.y > 298 && pos.y < 477) spd.x *= -1;

    //rect(100, 375, 125, 25);
    if (pos.x > 98 && pos.x < 227 && pos.y > 373 && pos.y < 377) spd.y *= -1;
    if (pos.x > 98 && pos.x < 227 && pos.y > 398 && pos.y < 402) spd.y *= -1;

    if (pos.x > 223 && pos.x < 227 && pos.y > 373 && pos.y < 402) spd.x *= -1;

    //rect(200, 500, 25, 100);
    if (pos.x > 198 && pos.x < 227 && pos.y > 498 && pos.y < 502)spd.y *= -1;

    if (pos.x > 198 && pos.x < 202 && pos.y > 498 && pos.y < 602) spd.x *= -1;
    if (pos.x > 223 && pos.x < 227 && pos.y > 498 && pos.y < 600) spd.x *= -1;

    //rect(200, 575, 100, 25);
    if (pos.x > 198 && pos.x < 302 && pos.y > 573 && pos.y < 577) spd.y *= -1;
    if (pos.x > 198 && pos.x < 302 && pos.y > 598 && pos.y < 602) spd.y *= -1;

    if (pos.x > 298 && pos.x < 302 && pos.y > 573 && pos.y < 602) spd.x *= -1;

    //Collision højre side
    //rect(975, 175, 25, 100);
    if (pos.x > 973 && pos.x < 1002 && pos.y > 273 && pos.y <277) spd.y *= -1;

    if (pos.x>973 && pos.x<977 && pos.y>173 && pos.y<277) spd.x *= -1;
    if (pos.x>998 && pos.x<1002 && pos.y>175 && pos.y<277) spd.x *= -1;

    //rect(900, 175, 100, 25);

    if (pos.x>898 && pos.x<1002 && pos.y>173 && pos.y<177)spd.y*=-1;
    if (pos.x>898 && pos.x<1002 && pos.y>198 && pos.y<202)spd.y*=-1;

    if (pos.x>898 && pos.x<902 && pos.y>173 && pos.y<202)spd.x*=-1;
    //rect(850, 300, 25, 175);
    if (pos.x>848 && pos.x < 877 && pos.y > 298 && pos.y < 302) spd.y*=-1;
    if (pos.x>848 && pos.x < 877 && pos.y > 473 && pos.y < 477) spd.y*=-1;

    if (pos.x > 848 && pos.x < 852 && pos.y > 298 && pos.y < 477) spd.x*=-1;
    if (pos.x > 873 && pos.x < 877 && pos.y > 298 && pos.y < 477) spd.x*=-1;

    //rect(975, 375, 125, 25);
    if (pos.x > 973 && pos.x < 1102 && pos.y > 373 && pos.y < 377) spd.y*=-1;
    if (pos.x > 973 && pos.x < 1102 && pos.y > 398 && pos.y < 402) spd.y*=-1;

    if (pos.x > 973 && pos.x < 977 && pos.y > 373 && pos.y < 402) spd.x*=-1;

    //rect(975, 500, 25, 100);
    if (pos.x > 973 && pos.x < 1002 && pos.y > 498 && pos.y < 502) spd.y*=-1;

    if (pos.x > 973 && pos.x < 977 && pos.y > 498 && pos.y < 602) spd.x*=-1;
    if (pos.x > 998 && pos.x < 1002 && pos.y > 498 && pos.y < 600) spd.x*=-1;

    //rect(900, 575, 100, 25);
    if (pos.x > 898 && pos.x < 1002 && pos.y > 573 && pos.y < 577) spd.y*=-1;
    if (pos.x > 898 && pos.x < 1002 && pos.y > 598 && pos.y < 602) spd.y*=-1;

    if (pos.x > 898 && pos.x < 902 && pos.y >573 && pos.y < 602) spd.x*=-1;

    //colission midten
    // rect(400, 175, 400, 25);
    if (pos.x > 398 && pos.x < 802 && pos.y > 173 && pos.y < 177) spd.y *= -1;
    if (pos.x > 398 && pos.x < 802 && pos.y > 198 && pos.y < 202) spd.y *= -1;

    if (pos.x > 398 && pos.x < 402 && pos.y > 173 && pos.y < 202) spd.x *= -1;
    if (pos.x > 798 && pos.x < 802 && pos.y > 173 && pos.y < 202) spd.x *= -1;

    //rect(450, 300, 300, 25);
    if (pos.x > 448 && pos.x < 752 && pos.y > 298 && pos.y <302) spd.y *= -1;
    if (pos.x > 448 && pos.x < 752 && pos.y > 323 && pos.y <327) spd.y *= -1;

    if (pos.x > 448 && pos.x < 452 && pos.y > 298 && pos.y < 327) spd.x *= -1;
    if (pos.x > 748 && pos.x < 752 && pos.y > 298 && pos.y < 327) spd.x *= -1;
    //rect(400, 575, 400, 25);
    if (pos.x > 398 && pos.x < 802 && pos.y > 573 && pos.y < 577) spd.y *= -1;
    if (pos.x > 398 && pos.x < 802 && pos.y > 598 && pos.y < 602) spd.y *= -1;

    if (pos.x > 398 && pos.x < 402 && pos.y > 573 && pos.y < 602) spd.x *= -1;
    if (pos.x > 798 && pos.x < 802 && pos.y > 573 && pos.y < 602) spd.x *= -1;

    //rect(450, 450, 300, 25);
    if (pos.x > 448 && pos.x < 752 && pos.y > 448 && pos.y <452) spd.y *= -1;
    if (pos.x > 448 && pos.x < 752 && pos.y > 473 && pos.y < 477) spd.y *= -1;

    if (pos.x > 448 && pos.x < 452 && pos.y > 448 && pos.y <477) spd.x *= -1; 
    if (pos.x > 748 && pos.x < 752 && pos.y > 448 && pos.y <477) spd.x *= -1;
    //Collision for bullets slut


    // Debug for bullets: text (pos.x, pos.x, pos.y);
    // Debug for bullets: text (pos.y, pos.x, pos.y-100);

    timer--;
  }
  boolean finished() {
    if (timer <= 0) {
      return true;
    } else {
      return false;
    }
  }
}

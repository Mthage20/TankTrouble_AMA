void PowerUp()
{ 
  image(freeze, PowerUpX, PowerUpY); //Sørger for at power-up's billede (der er lavet fra bunden) følger med power-up's koordinater
   //Sørger for at PowerUpTimeren (Power-up's levetid) hele tiden falder med en, hver gang draw bliver kørt 

  //Giver 10 forskellige valgmuligheder for spawn koordinater,og vælger en tilfældig valgmulighed, hvis PowerUpTimer har ramt 0. Denne valgmulighed bliver så lagret i variablen PowerUpFreeze
  if (PowerUpTimer == 0) 
  {
    PowerUpFreeze = int(random(0, 10));
    PowerUpTimer = 350; //Efter power-up har fået en ny position, blive power-ups levetid "genstartet"
  }
  
  
  if (PowerUpFreeze  == 0) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 350;
    PowerUpY = 150;
  }

  if (PowerUpFreeze  == 1) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 200;
    PowerUpY = 320;
  }

  if (PowerUpFreeze  == 2) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 400;
    PowerUpY = 400;
  }

  if (PowerUpFreeze  == 3) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 150;
    PowerUpY = 550;
  }

  if (PowerUpFreeze  == 4) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 800;
    PowerUpY = 525;
  }

  if (PowerUpFreeze  == 5) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 400;
    PowerUpY = 250;
  }
  if (PowerUpFreeze  == 6) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 900;
    PowerUpY = 250;
  }

  if (PowerUpFreeze  == 7) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 1000;
    PowerUpY = 120;
  }

  if (PowerUpFreeze  == 8) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 1050;
    PowerUpY = 420;
  }

  if (PowerUpFreeze  == 9) //Hvis valgmuligheden der blev tilfældigt valgt er lig med 0, så får power-up disse koordinater
  {
    PowerUpX = 600;
    PowerUpY = 640;
  }

PowerUpTimer--;

  if (tank1.x + 17 > PowerUpX && tank1.x - 17 < PowerUpX + 25 && tank1.y + 20 > PowerUpY && tank1.y - 20 < PowerUpY + 25) //Tjekker om tank 1 har ramt power-up.
  {
    PowerUpTimer = 0; //Sætter levetiden af powerup til at være lig med 0, hvilket vil sige, at hvis der er nogen der rammer power-up så får den nye koordinater.
    frozen2 = true; //Sætter tank 2 til at stå stille/være "frosset fast".
  }

  if (frozen2 == true) //Hvis tank 2 er frossen
  { 
    frozenTimer = frozenTimer - 1; //Tæller tiden du er frosset, ned
    tank2.col = #ADD8FC; //Giver tank 2 den "frosne" lyseblå farve
  }

  if (frozenTimer < 0) //tjek om frozenTimer har ramt 0
  {
    frozen2 = false; //Hvis frozenTimer har ramt 0 så er tank 2 ikke længere frossen
    frozenTimer = 300; //Sørger for at resette frozenTimer så den kan bruges til den næste der bliver froset med power-up.
    tank2.col = #B43631; //Sætter tank 2 tilbage til sin originale farve.
  }


  if (tank2.x + 17 > PowerUpX && tank2.x - 17 < PowerUpX + 25 && tank2.y + 20 > PowerUpY && tank2.y - 20 < PowerUpY + 25) //Tjekker om tank 2 har ramt power-up. 
  { 
    PowerUpTimer = 0; //Sætter levetiden af powerup til at være lig med 0, hvilket vil sige, at hvis der er nogen der rammer power-up så får den nye koordinater.
    frozen1 = true; //Sætter tank 1 til at stå stille/være "frosset fast".
  }

  if (frozen1 == true) //Hvis tank 1 er frossen
  {
    frozenTimer = frozenTimer - 1; //Tæller tiden du er frosset, ned
    tank1.col = #ADD8FC; //Giver tank 1 den "frosne" lyseblå farve
  }

  if (frozenTimer<0) 
  {
    frozen1 = false; //Hvis frozenTimer har ramt 0 så er tank 1 ikke længere frossen
    frozenTimer = 300;  //Sørger for at resette frozenTimer så den kan bruges til den næste der bliver froset med power-up.
    tank1.col = #2C7133; //Sætter tank 1 tilbage til sin originale farve.
  }

}

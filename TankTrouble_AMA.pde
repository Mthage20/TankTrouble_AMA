Tank tank1, tank2; //Class Tank; Objekt(er) tank1 og tank 2

//Variabel erklæringer for bullets (Der er flere variabler der bliver erklæret under Bullet-fanen 
PVector BulletCenter1, BulletCenter2;
ArrayList <Bullet> myBullets = new ArrayList<Bullet>();


//Forside variabel erklæringer 
boolean buttonPressed = false; //Tjekker om start-knappen er trykket på.
int buttonX, buttonY, buttonW, buttonH;

//Variabel erklæringer for billeder der skal loades ind i programmet
PImage bg, freeze, tankname, tankgreen, tankred;

//Power-up variabel erklæringer
boolean frozen1 = false, frozen2 = false; //tank 1 (frozen1) bliver sat til ikke at være påvirket af power-up det samme gælder for tank 2 (frozen2)
int PowerUpFreeze = 3; //Starter med koordinaterne som valgmulighed nr. 3  har. 
int PowerUpX, PowerUpY; //Power-up's koordinater 
int PowerUpTimer = 350; //Tiden der går før placeringen af power-up bliver resettet. 
int frozenTimer = 300; //Tiden du er frosset i, hvis du bliver påvirket af power-up.

//Tank 1 og Tank 2's variabel erklæringer spawn koordinatsæt
int T1koordinatsaettal, T2koordinatsaettal;

//Pointsystem-variabel erklæringer
int tank1score = 0;
int tank2score = 0;

void setup() 
{  
  size(1200, 800);
  tank1 = new Tank(150, 125, 0, #2C7133); //Tank 1's; x, y startkoordinat samt start vinkel, og værdi for HEX-farve.
  tank2 = new Tank(1050, 650, 0, #B43631); //Tank 2's; x, y startkoordinat samt start vinkel, og værdi for HEX-farve.

  noFill();
  stroke(0);
  strokeWeight(2);
  rectMode(CENTER);

  //Her bliver billederne tilføjet til deres respektive variabler   
  bg = loadImage("bg.jpg");
  tankname = loadImage("tank_trouble.png");
  tankgreen = loadImage("tankgreen.png");
  tankred = loadImage("tankred.png");
  freeze = loadImage("freeze.png");


  //Kode der relateret til start-knappen 
  buttonW = 335;
  buttonH = 100;
  textSize(buttonH);
  buttonX = (width - buttonW) / 2 + 350;
  buttonY = (height - buttonH) / 2 + 300;
}

void draw() 
{

  if (buttonPressed == true) //Hvis knappen er blevet trykket på, starter hele vores spil.
  {
    background(130, 135, 110);
    fill(255, 255, 255);
    strokeWeight(2);

    //Tank illustrationer til point
    image(tankgreen, 150, 710) ;
    image(tankred, 950, 710) ;



    //Funktionskald undtagen funktionskald for tanks
    Bullet();
    pointsystem();
    vaegge();
    PowerUp();

    //Da tanksene er blevet lavet ud fra rectMode(CENTER) så er funktionskaldene der er relateret til tanksene herunder
    rectMode(CENTER);
    tank1.update();
    tank1.display();
    tank2.update();
    tank2.display();    

    //Opsætning af vektorerne BulletCenter1 og BulletCenter2, som der bestemmer, hvor kuglen starter fra. (hvad deres x og y, skal være lig med)
    BulletCenter1 = new PVector(tank1.x + sin(tank1.angle), tank1.y + cos(tank2.angle));
    BulletCenter2 = new PVector(tank2.x + sin(tank2.angle), tank2.y + cos(tank2.angle));

    //Sørger for at classen Bullet og arraylisten myBullets opdateres i sammenhæng med hinanden.
    for (Bullet b : myBullets) 
    { 
      b.update();
    }
  } 

  //Hvis der ikke er trykket på start-knappen 
  else 
  {
    // baggrund
    image(bg, 0, 0) ;
    image(tankname, 0, 50) ;

    rectMode(CORNER);
    fill(#A70F0F);
    rect(buttonX - 5, buttonY - 5, buttonW + 10, buttonH + 10, 23);
    fill(#41C44F);
    rect(buttonX, buttonY, buttonW, buttonH, 23);
    fill(0);
    text("START", buttonX + 10, buttonY + buttonH - 10);
  }
}

void reset() //Sørger for "random" spawn points, når en af tanksene bliver dræbt (ramt af en kugle).
{
  T1koordinatsaettal = int(random(0, 5)); //Giver 5 forskellige valgmuligheder for reset spawn koordinater
  if (T1koordinatsaettal == 0) //Hvis der tilfældigvis bliver valgt 0 med random funktionen, så får tank 1 følgende spawn koordinater.
  {
    tank1.x = 600;
    tank1.y = 125;
  }

  if (T1koordinatsaettal == 1) //Hvis der tilfældigvis bliver valgt 1 med random funktionen, så får tank 1 følgende spawn koordinater.
  {
    tank1.x = 900;
    tank1.y = 525;
  }

  if (T1koordinatsaettal == 2) //Hvis der tilfældigvis bliver valgt 2 med random funktionen, så får tank 1 følgende spawn koordinater.
  {
    tank1.x = 1050;
    tank1.y = 625;
  }

  if (T1koordinatsaettal == 3) //Hvis der tilfældigvis bliver valgt 3 med random funktionen, så får tank 1 følgende spawn koordinater.
  {
    tank1.x = 1050;
    tank1.y = 125;
  }

  if (T1koordinatsaettal == 4)//Hvis der tilfældigvis bliver valgt 4 med random funktionen, så får tank 1 følgende spawn koordinater. 
  {
    tank1.x = 400;
    tank1.y = 400;
  }


  T2koordinatsaettal = int(random(0, 5)); //Giver 5 forskellige valgmuligheder for reset spawn koordinater
  if (T2koordinatsaettal == 0) //Hvis der tilfældigvis bliver valgt 0 med random funktionen, så får tank 2 følgende spawn koordinater.
  {
    tank2.x = 300;
    tank2.y = 300;
  }

  if (T2koordinatsaettal == 1) //Hvis der tilfældigvis bliver valgt 1 med random funktionen, så får tank 2 følgende spawn koordinater.
  {
    tank2.x = 800;
    tank2.y = 400;
  }

  if (T2koordinatsaettal == 2) //Hvis der tilfældigvis bliver valgt 2 med random funktionen, så får tank 2 følgende spawn koordinater.
  {
    tank2.x = 150;
    tank2.y = 650;
  }

  if (T2koordinatsaettal == 3) //Hvis der tilfældigvis bliver valgt 3 med random funktionen, så får tank 2 følgende spawn koordinater.
  {
    tank2.x = 600;
    tank2.y = 525;
  }

  if (T2koordinatsaettal == 4) //Hvis der tilfældigvis bliver valgt 4 med random funktionen, så får tank 2 følgende spawn koordinater.
  {
    tank2.x = 300;
    tank2.y = 300;
  }
}

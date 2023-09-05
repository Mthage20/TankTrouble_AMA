class Tank {
  float x, y, angle;
  boolean w, a, s, d;
  boolean UP, LEFT, DOWN, RIGHT;
  int col;

  Tank(int x, int y, int angle, int tempcol) { //Tank class' parametrer (Constructor)
    this.x=x; //Sætter x for denne constructor til at være lig med classens x
    this.y=y; //Sætter y for denne constructor til at være lig med classens y
    this.angle=angle; //Sætter angle for denne constructor til at være lig med classens angle
    col=tempcol;
  }


  void update() {
    //TANK 1
    if (w) {
      x+=4*cos(angle-HALF_PI);
      y+=4*sin(angle-HALF_PI);
    }
    if (s) {
      x-=4*cos(angle-HALF_PI);
      y-=4*sin(angle-HALF_PI);
    }
    if (a) {
      angle=angle-radians(2);
    }
    if (d) {
      angle=angle+radians(2);
    }
    //TANK 2
    if (UP) {
      x+=4*cos(angle-HALF_PI);
      y+=4*sin(angle-HALF_PI);
    }
    if (DOWN) {
      x-=4*cos(angle-HALF_PI);
      y-=4*sin(angle-HALF_PI);
    }
    if (LEFT) {
      angle=angle-radians(2);
    }
    if (RIGHT) {
      angle=angle+radians(2);
    }

    //Alt collision for tanks (Collision mellem tanks og bullets kan findes i Bullet.update)

    //Collision med ydervægge
    if (tank1.y<95)tank1.y=95;
    if (tank2.y<95)tank2.y=95;
    if (tank1.y>680)tank1.y=680;
    if (tank2.y>680)tank2.y=680;


    if (tank1.x<120)tank1.x=120;
    if (tank2.x<120)tank2.x=120;
    if (tank1.x>1080)tank1.x=1080;
    if (tank2.x>1080)tank2.x=1080;
    //Collision indre vægge
    //Collision venstre side
    //rect(200, 175, 25, 100);
    if (tank1.x>185 && tank1.x<240 && tank1.y>155 && tank1.y<160)tank1.y=155;
    if (tank2.x>185 && tank2.x<240 && tank2.y>155 && tank2.y<160)tank2.y=155;
    if (tank1.x>185 && tank1.x<240 && tank1.y>290 && tank1.y<295)tank1.y=295;
    if (tank2.x>185 && tank2.x<240 && tank2.y>290 && tank2.y<295)tank2.y=295;

    if (tank1.x>180 && tank1.x<185 && tank1.y>160 && tank1.y<290)tank1.x=180;
    if (tank2.x>180 && tank2.x<185 && tank2.y>160 && tank2.y<290)tank2.x=180;
    if (tank1.x>240 && tank1.x<245 && tank1.y>160 && tank1.y<290)tank1.x=245;
    if (tank2.x>240 && tank2.x<245 && tank2.y>160 && tank2.y<290)tank2.x=245;

    //rect(200, 175, 100, 25);
    if (tank1.x>185 && tank1.x<315 && tank1.y>155 && tank1.y<160)tank1.y=155;
    if (tank2.x>185 && tank2.x<315 && tank2.y>155 && tank2.y<160)tank2.y=155;
    if (tank1.x>185 && tank1.x<315 && tank1.y>215 && tank1.y<220)tank1.y=220;
    if (tank2.x>185 && tank2.x<315 && tank2.y>215 && tank2.y<220)tank2.y=220;

    if (tank1.x>315 && tank1.x<320 && tank1.y>160 && tank1.y<215)tank1.x=320;
    if (tank2.x>315 && tank2.x<320 && tank2.y>160 && tank2.y<215)tank2.x=320;

    //rect(325, 300, 25, 175);
    if (tank1.x>310 && tank1.x<365 && tank1.y>280 && tank1.y<285)tank1.y=280;
    if (tank2.x>310 && tank2.x<365 && tank2.y>280 && tank2.y<285)tank2.y=280;
    if (tank1.x>310 && tank1.x<365 && tank1.y>490 && tank1.y<495)tank1.y=495;
    if (tank2.x>310 && tank2.x<365 && tank2.y>490 && tank2.y<495)tank2.y=495;

    if (tank1.x>305 && tank1.x<310 && tank1.y>280 && tank1.y<495)tank1.x=305;
    if (tank2.x>305 && tank2.x<310 && tank2.y>280 && tank2.y<495)tank2.x=305;
    if (tank1.x>365 && tank1.x<370 && tank1.y>280 && tank1.y<495)tank1.x=370;
    if (tank2.x>365 && tank2.x<370 && tank2.y>280 && tank2.y<495)tank2.x=370;

    //rect(100, 375, 125, 25);
    if (tank1.x>85 && tank1.x<240 && tank1.y>355 && tank1.y<360)tank1.y=355;
    if (tank2.x>85 && tank2.x<240 && tank2.y>355 && tank2.y<360)tank2.y=355;
    if (tank1.x>85 && tank1.x<240 && tank1.y>415 && tank1.y<420)tank1.y=420;
    if (tank2.x>85 && tank2.x<240 && tank2.y>415 && tank2.y<420)tank2.y=420;

    if (tank1.x>240 && tank1.x<245 && tank1.y>355 && tank1.y<420)tank1.x=245;
    if (tank2.x>240 && tank2.x<245 && tank2.y>355 && tank2.y<420)tank2.x=245;

    //rect(200, 500, 25, 100);
    if (tank1.x>185 && tank1.x<240 && tank1.y>480 && tank1.y<485)tank1.y=480;
    if (tank2.x>185 && tank2.x<240 && tank2.y>480 && tank2.y<485)tank2.y=480;
    if (tank1.x>185 && tank1.x<240 && tank1.y>615 && tank1.y<620)tank1.y=620;
    if (tank2.x>185 && tank2.x<240 && tank2.y>615 && tank2.y<620)tank2.y=620;

    if (tank1.x>180 && tank1.x<185 && tank1.y>480 && tank1.y<615)tank1.x=180;
    if (tank2.x>180 && tank2.x<185 && tank2.y>480 && tank2.y<615)tank2.x=180;
    if (tank1.x>240 && tank1.x<245 && tank1.y>480 && tank1.y<615)tank1.x=245;
    if (tank2.x>240 && tank2.x<245 && tank2.y>480 && tank2.y<615)tank2.x=245;

    //rect(200, 575, 100, 25);
    if (tank1.x>185 && tank1.x<315 && tank1.y>555 && tank1.y<560)tank1.y=555;
    if (tank2.x>185 && tank2.x<315 && tank2.y>555 && tank2.y<560)tank2.y=555;
    if (tank1.x>185 && tank1.x<315 && tank1.y>615 && tank1.y<620)tank1.y=620;
    if (tank2.x>185 && tank2.x<315 && tank2.y>615 && tank2.y<620)tank2.y=620;

    if (tank1.x>315 && tank1.x<320 && tank1.y>555 && tank1.y<615)tank1.x=320;
    if (tank2.x>315 && tank2.x<320 && tank2.y>555 && tank2.y<615)tank2.x=320;

    //Collision højre side

    //rect(975, 175, 25, 100);
    if (tank1.x>960 && tank1.x<1015 && tank1.y>155 && tank1.y<160)tank1.y=155;
    if (tank2.x>960 && tank2.x<1015 && tank2.y>155 && tank2.y<160)tank2.y=155;
    if (tank1.x>960 && tank1.x<1015 && tank1.y>290 && tank1.y<295)tank1.y=295;
    if (tank2.x>960 && tank2.x<1015 && tank2.y>290 && tank2.y<295)tank2.y=295;

    if (tank1.x>955 && tank1.x<960 && tank1.y>160 && tank1.y<290)tank1.x=955;
    if (tank2.x>955 && tank2.x<960 && tank2.y>160 && tank2.y<290)tank2.x=955;
    if (tank1.x>1015 && tank1.x<1020 && tank1.y>160 && tank1.y<290)tank1.x=1020;
    if (tank2.x>1015 && tank2.x<1020 && tank2.y>160 && tank2.y<290)tank2.x=1020;

    //rect(900, 175, 100, 25);
    if (tank1.x>885 && tank1.x<1015 && tank1.y>155 && tank1.y<160)tank1.y=155;
    if (tank2.x>885 && tank2.x<1015 && tank2.y>155 && tank2.y<160)tank2.y=155;
    if (tank1.x>885 && tank1.x<1015 && tank1.y>215 && tank1.y<220)tank1.y=220;
    if (tank2.x>885 && tank2.x<1015 && tank2.y>215 && tank2.y<220)tank2.y=220;

    if (tank1.x>880 && tank1.x<885 && tank1.y>160 && tank1.y<215)tank1.x=880;
    if (tank2.x>880 && tank2.x<885 && tank2.y>160 && tank2.y<215)tank2.x=880;

    //rect(850, 300, 25, 175);
    if (tank1.x>835 && tank1.x<890 && tank1.y>280 && tank1.y<285)tank1.y=280;
    if (tank2.x>835 && tank2.x<890 && tank2.y>280 && tank2.y<285)tank2.y=280;
    if (tank1.x>835 && tank1.x<890 && tank1.y>490 && tank1.y<495)tank1.y=495;
    if (tank2.x>835 && tank2.x<890 && tank2.y>490 && tank2.y<495)tank2.y=495;

    if (tank1.x>830 && tank1.x<835 && tank1.y>280 && tank1.y<495)tank1.x=830;
    if (tank2.x>830 && tank2.x<835 && tank2.y>280 && tank2.y<495)tank2.x=830;
    if (tank1.x>890 && tank1.x<895 && tank1.y>280 && tank1.y<495)tank1.x=895;
    if (tank2.x>890 && tank2.x<895 && tank2.y>280 && tank2.y<495)tank2.x=895;

    //rect(975, 375, 125, 25);
    if (tank1.x>960 && tank1.x<1115 && tank1.y>355 && tank1.y<360)tank1.y=355;
    if (tank2.x>960 && tank2.x<1115 && tank2.y>355 && tank2.y<360)tank2.y=355;
    if (tank1.x>960 && tank1.x<1115 && tank1.y>415 && tank1.y<420)tank1.y=420;
    if (tank2.x>960 && tank2.x<1115 && tank2.y>415 && tank2.y<420)tank2.y=420;

    if (tank1.x>955 && tank1.x<960 && tank1.y>355 && tank1.y<420)tank1.x=955;
    if (tank2.x>955 && tank2.x<960 && tank2.y>355 && tank2.y<420)tank2.x=955;

    //rect(975, 500, 25, 100);
    if (tank1.x>960 && tank1.x<1015 && tank1.y>480 && tank1.y<485)tank1.y=480;
    if (tank2.x>960 && tank2.x<1015 && tank2.y>480 && tank2.y<485)tank2.y=480;
    if (tank1.x>960 && tank1.x<1015 && tank1.y>615 && tank1.y<620)tank1.y=620;
    if (tank2.x>960 && tank2.x<1015 && tank2.y>615 && tank2.y<620)tank2.y=620;

    if (tank1.x>955 && tank1.x<960 && tank1.y>480 && tank1.y<615)tank1.x=955;
    if (tank2.x>955 && tank2.x<960 && tank2.y>480 && tank2.y<615)tank2.x=955;
    if (tank1.x>1015 && tank1.x<1020 && tank1.y>480 && tank1.y<615)tank1.x=1020;
    if (tank2.x>1015 && tank2.x<1020 && tank2.y>480 && tank2.y<615)tank2.x=1020;

    //rect(900, 575, 100, 25);
    if (tank1.x>885 && tank1.x<1015 && tank1.y>555 && tank1.y<560)tank1.y=555;
    if (tank2.x>885 && tank2.x<1015 && tank2.y>555 && tank2.y<560)tank2.y=555;
    if (tank1.x>885 && tank1.x<1015 && tank1.y>615 && tank1.y<620)tank1.y=620;
    if (tank2.x>885 && tank2.x<1015 && tank2.y>615 && tank2.y<620)tank2.y=620;

    if (tank1.x>880 && tank1.x<885 && tank1.y>555 && tank1.y<615)tank1.x=880;
    if (tank2.x>880 && tank2.x<885 && tank2.y>555 && tank2.y<615)tank2.x=880;
    //colission midten
    // rect(400, 175, 400, 25);
    if (tank1.x>385 && tank1.x<815 && tank1.y>155 && tank1.y<160)tank1.y=155;
    if (tank2.x>385 && tank2.x<815 && tank2.y>155 && tank2.y<160)tank2.y=155;
    if (tank1.x>385 && tank1.x<815 && tank1.y>215 && tank1.y<220)tank1.y=220;
    if (tank2.x>385 && tank2.x<815 && tank2.y>215 && tank2.y<220)tank2.y=220;

    if (tank1.x>380 && tank1.x<385 && tank1.y>160 && tank1.y<215)tank1.x=380;
    if (tank2.x>380 && tank2.x<385 && tank2.y>160 && tank2.y<215)tank2.x=380;
    if (tank1.x>815 && tank1.x<820 && tank1.y>160 && tank1.y<215)tank1.x=820;
    if (tank2.x>815 && tank2.x<820 && tank2.y>160 && tank2.y<215)tank2.x=820;

    //rect(450, 300, 300, 25);
    if (tank1.x>435 && tank1.x<765 && tank1.y>280 && tank1.y<285)tank1.y=280;
    if (tank2.x>435 && tank2.x<765 && tank2.y>280 && tank2.y<285)tank2.y=280;
    if (tank1.x>435 && tank1.x<765 && tank1.y>340 && tank1.y<345)tank1.y=345;
    if (tank2.x>435 && tank2.x<765 && tank2.y>340 && tank2.y<345)tank2.y=345;

    if (tank1.x>430 && tank1.x<435 && tank1.y>280 && tank1.y<345)tank1.x=430;
    if (tank2.x>430 && tank2.x<435 && tank2.y>280 && tank2.y<345)tank2.x=430;
    if (tank1.x>765 && tank1.x<770 && tank1.y>280 && tank1.y<345)tank1.x=770;
    if (tank2.x>765 && tank2.x<770 && tank2.y>280 && tank2.y<345)tank2.x=770;
    //rect(400, 575, 400, 25);
    if (tank1.x>385 && tank1.x<815 && tank1.y>555 && tank1.y<560)tank1.y=555;
    if (tank2.x>385 && tank2.x<815 && tank2.y>555 && tank2.y<560)tank2.y=555;
    if (tank1.x>385 && tank1.x<815 && tank1.y>615 && tank1.y<620)tank1.y=620;
    if (tank2.x>385 && tank2.x<815 && tank2.y>615 && tank2.y<620)tank2.y=620;

    if (tank1.x>380 && tank1.x<385 && tank1.y>560 && tank1.y<615)tank1.x=380;
    if (tank2.x>380 && tank2.x<385 && tank2.y>560 && tank2.y<615)tank2.x=380;
    if (tank1.x>815 && tank1.x<820 && tank1.y>560 && tank1.y<615)tank1.x=820;
    if (tank2.x>815 && tank2.x<820 && tank2.y>560 && tank2.y<615)tank2.x=820;

    //rect(450, 450, 300, 25);
    if (tank1.x>435 && tank1.x<765 && tank1.y>430 && tank1.y<435)tank1.y=430;
    if (tank2.x>435 && tank2.x<765 && tank2.y>430 && tank2.y<435)tank2.y=430;
    if (tank1.x>435 && tank1.x<765 && tank1.y>490 && tank1.y<495)tank1.y=495;
    if (tank2.x>435 && tank2.x<765 && tank2.y>490 && tank2.y<495)tank2.y=495;

    if (tank1.x>430 && tank1.x<435 && tank1.y>430 && tank1.y<495)tank1.x=430;
    if (tank2.x>430 && tank2.x<435 && tank2.y>430 && tank2.y<495)tank2.x=430;
    if (tank1.x>765 && tank1.x<770 && tank1.y>430 && tank1.y<495)tank1.x=770;
    if (tank2.x>765 && tank2.x<770 && tank2.y>430 && tank2.y<495)tank2.x=770;
  }

  void display() 
  { 
    pushMatrix(); //Laver et slags "safe-space", hvor det der bliver skrevet indenfor pushMatrix og popMatrix kun gælder.
    translate(x, y); //Sætter nyt 0-punkt
    rotate(angle);

    fill(col);
    rect(0, 0, 35, 40); //Selve tanken
    fill(0);
    rect(0, 8, 15, 15); //Tank tårnet

    fill(col);
    rect(0, -10, 10, 50); ///Kanon tårnet
    popMatrix();
  }
}

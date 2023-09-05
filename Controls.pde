void keyPressed() {
  //TANK 1
  if (key == 'w' && frozen1 == false || key =='W' && frozen1 == false) {
    tank1.w=true;
  }

  if (key == 's' && frozen1 == false || key =='S' && frozen1 == false) {
    tank1.s=true;
  }
  if (key == 'a' && frozen1 == false || key =='A' && frozen1 == false) {
    tank1.a=true;
  }
  if (key == 'd' && frozen1 == false || key =='D' && frozen1 == false) {
    tank1.d=true;
  }


  //Tank 2
  if (key == CODED && frozen2 == false)
    if (keyCode == UP && frozen2 == false) {
      tank2.UP= true;
    }
  if (keyCode == DOWN && frozen2 == false) {
    tank2.DOWN = true;
  }
  if (keyCode == LEFT && frozen2 == false) {
    tank2.LEFT= true;
  }
  if (keyCode == RIGHT && frozen2 == false) {
    tank2.RIGHT= true;
  }
}



void keyReleased() {

  //TANK 1
  if (key == 'w' || key =='W') {
    tank1.w=false;
  }
  if (key == 's' || key =='S') {
    tank1.s=false;
  }
  if (key == 'a' || key =='A') {
    tank1.a=false;
  }
  if (key == 'd' || key =='D') {
    tank1.d=false;
  }
  if (myBullets.size() < 5)
  {
    if (key == 'c' || key =='C') {
      PVector T1 = new PVector(tank1.x+sin(tank1.angle)*39, tank1.y+cos(tank1.angle)*-39);
      PVector T1Direction = PVector.sub(T1, BulletCenter1); //
      myBullets.add(new Bullet(new PVector(tank1.x, tank1.y), T1Direction.normalize()));
    }
  }


  //TANK 2
  if (key == CODED)
    if (keyCode == UP) {
      tank2.UP=false;
    }
  if (keyCode == DOWN) {
    tank2.DOWN=false;
  }
  if (keyCode == LEFT) {
    tank2.LEFT=false;
  }
  if (keyCode == RIGHT) {
    tank2.RIGHT=false;
  }

  if (myBullets.size() < 5) {
    if (key == 'm' || key == 'M') {

      // PVector T2 = new PVector(tank2.x+sin(tank2.angle)*39, tank2.y+cos(tank2.angle)*-39);
      PVector T2 = new PVector(tank2.x+sin(tank2.angle)*39, tank2.y+cos(tank2.angle)*-39);
      PVector T2Direction = PVector.sub(T2, BulletCenter2); //
      myBullets.add(new Bullet(new PVector(tank2.x, tank2.y), T2Direction.normalize()));
    }
  }
}

class Car {
  color carColor;
  int posX, posY;
  int horsePower = (int) random(100, 800);
  float rotateAngle = 0;
  Car(color carColor_, int posX_, int posY_) {
    carColor = carColor_;
    posX = posX_-(width/2);
    posY = posY_-(height/2);
  }

  void displayCar() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(rotateAngle);
    carWheels();
    carBody();
    popMatrix();
  }

  void carBody() {
    // Car body 
    rectMode(CENTER);
    fill(carColor);
    noStroke();
    rect(posX, posY, 200, 50);
  }

  void carWheels() {
    fill(0);
    for (int i = 0, c = -70, b = -25; i <= 3; i++, c = constrain(140+c, -70, 70), b = constrain(50-b, -25, 25)) {
      if (c == 70 && i == 1) {
        c = -70;
        b = 25;
      }
      rect(posX+c, posY+b, 40, 25);
    }
  }

  int horsePower() {
    return horsePower;
  }

  void moveCar(char key_) {
    switch(key_) {
    case 'w':
      posX += 5;
      break;
    case 'a':
      rotateAngle -=0.1;
      break;
    case 's':
      posX -= 5;
      break;
    case 'd':
      rotateAngle +=0.1;
      break;
    default: 
      println("OK");
      break;
    }
  }
}

class Car {
  color carColor;
  int posX, posY;
  Car(color carColor_, int posX_, int posY_) {
    carColor = carColor_;
    posX = posX_;
    posY = posY_;
  }

  void displayCar() {
    carBody();
    carWheels();
  }

  void carBody() {
    // Car body 
    rectMode(CENTER);
    fill(carColor);
    noStroke();
    rect(posX, posY, 500, 150);
  }

  void carWheels() {
    fill(0);
    for (int i = -200; i <= 200; i += 400) {
      rect(posX-i, posY+75, 50, 25);
      rect(posX+i, posY-75, 50, 25);
    }
  }
}

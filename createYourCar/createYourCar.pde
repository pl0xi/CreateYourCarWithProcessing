int carNumber;
ArrayList<Car> car = new ArrayList<Car>();
Car currentCar;
void setup() {
  size(800, 600);
  carNumber = 0;
  car.add(new Car(color(255, 0, 0), width/2, height/2));
}



void draw() {
  background(255);

  currentCar = car.get(carNumber);
  currentCar.displayCar();


  displayCarData(currentCar);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      carNumber++;
      car.add(new Car(color(random(255), random(255), random(255)), width/2, height/2));
    } else if (keyCode == LEFT && carNumber != 0) {
      carNumber--;
    }
  } else {
    currentCar.moveCar(key);
  }
}

void displayCarData(Car showCar_) {
  textSize(32);
  fill(0);
  textAlign(CENTER);
  text("Car " + (carNumber+1), width/2, height/5);
  text("HP " + showCar_.horsePower(), width/2, height/4);
}

Car car;

void setup() {
  size(800, 600);
  car = new Car(color(255, 0, 0), width/2, height/2);
  
}

void draw() {
  background(255);
  
  car.displayCar();
}

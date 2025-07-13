// Abstract class
abstract class Vehicle {
  String brand;

  Vehicle(this.brand);

  // Abstract method
  void accelerate();

  // Concrete method
  void displayBrand() {
    print("Brand: $brand");
  }
}

// Concrete class
class Car extends Vehicle {
  Car(String brand) : super(brand);

  @override
  void accelerate() {
    print("$brand Car is accelerating!");
  }
}

void main() {
  Car myCar = Car("Toyota");
  myCar.displayBrand();
  myCar.accelerate();
}
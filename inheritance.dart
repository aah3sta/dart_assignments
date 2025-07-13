//INHERITANCE
//base class (Superclass)
class Vehicle{
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo(){
    print('Brand: $brand');
    print('Year: $year');
  }
}

//subclass inheriting from superclass
class  Car extends Vehicle{
  String model;

  Car(String brand, int year, this.model) : super(brand, year);
  
  //Method to display car-specific info
  void displayCarInfo(){
    displayInfo();
    print('Model: $model');
  }
}

//POLYMORPHISM
class Animal{
  //method to be overrwriten by a derived class
  void makeSound(){
    print('Animal makes a sound');
  }
}

//Derived class dog that overrides Animal
class Dog extends Animal{
  @override
  void makeSound(){
    print('Dog barks');
  }
}

//Derived class Cat that overrides animal
class Cat extends Animal{
  @override
  void makeSound(){
    print('Cat meows');
  }
}


void main(){
  Car car = Car('Toyota', 2021, 'Corolla');
  car.displayCarInfo();

  Animal animal = Animal();
  Dog dog = Dog();
  Cat cat = Cat();

  //Calling makeSound method for each
  animal.makeSound();
  dog.makeSound();
  cat.makeSound();
}
class Person {
  //Properties of the class
  String name;
  int age;

  //Constructor
  Person(this.name, this.age);

  //Method displaying personal details
  void displayInfo(){
    print('Name: $name, Age: $age');
  }
}

//Attributes - data, their behavior- methods

class Car{
  String brand;
  String model;

  Car(this.brand, this.model);

  void showDetails(){
    print('Brand: $brand, Model: $model');
  }
}


//types of constructors - default and parametized

//Encapsulation
class Circle {
  //private property with underscore
  double _radius;

  //constructor
  Circle(this._radius);

  //getter method to access private data
  double get radius => _radius;

  //setter method to update the radius
  set radius(double value){
    if(value > 0){
      _radius = value;
    } else {
      print('Radius must be greater than 0');
    }
  }

  //Method to calculate area of the circle
  double calculateArea(){
    return 3.1416 * _radius * _radius;
  }
}


void main(){
  Person person1 = Person('Alice', 30);
  person1.displayInfo();

  Car myCar = Car('Toyota', 'Corolla');
  myCar.showDetails();

  //creating an instance of Cirlce
  Circle circle = Circle(5.0);

  //accessing the radius using getter
  print('Initial radius: ${circle.radius}');
  print('Initial area: ${circle.calculateArea()}');

  circle.radius = 7.0;

  //accessing updated radius and area
  print('Updated radius: ${circle.radius}');
  print('Updated area : ${circle.calculateArea()}');

  circle.radius = -3.0;
}

import 'dart:math';

class Circle{
  double radius;

  Circle(this.radius);

  //checks if the radius is valid before making a circle
  factory Circle.create(double radius){
    //if the radius is 0 or negative, we stop and throw an error
    if (radius <= 0){
      throw ArgumentError('Radius must be positive');
    }
    //if the radius is good, we make and return a new circle
    return Circle(radius);
  }

  //This is how a circle knows to calculate its own area
  double calculateArea(){
    return pi * radius * radius;
  }
}


void main(){
  try{// We put code that might have errors inside 'try'.
    // We successfully make a good circle!
    Circle circle1 = Circle.create(5.0);
    print('Circle 1 Area: ${circle1.calculateArea()}');

    // Now, we try to make a circle with a bad radius (-3.0).
    // Our 'factory' constructor will stop this and throw an error.
    Circle circle3 = Circle.create(-3.0);
    // This line won't be reached because of the error above.
    print('Circle 3 Area: ${circle3.calculateArea()}');

  } catch (e) { // If an error happens in 'try', it jumps here.
    // We print the error message so we know what went wrong.
    print(e);
  }
}


abstract class Animal {
  void makeSound();
}

class Pet{
  String _name;

  Pet(this._name);

  String get name => _name;

  set name(String newName){
    if(newName.isNotEmpty){
      _name = newName;
    }
  }

  void greet(){
    print('Hi, I am $_name.');
  }
}

class Dog extends Pet implements Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("Bark!");
  }

  @override
  void greet() {
    print("Woof! I'm ${name}, your loyal dog.");
  }
}

class Cat extends Pet implements Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("Meow!");
  }

  @override
  void greet() {
    print("Meow~ I'm ${name}, your mysterious cat.");
  }
}

void main() {
  List<Pet> myPets = [
    Dog("Buddy"),
    Cat("Whiskers")
  ];

  for (var pet in myPets) {
    pet.greet();
    (pet as Animal).makeSound(); 
    }
}
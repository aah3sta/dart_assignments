void main(){
  //Define Variables: Create a Dart program that defines and initializes variables of the following types: int, double, String, bool, and List.
  int age1 = 19;
  String name = 'Oyoo';
  double height = 5.6;
  bool isStudent = true;
  List myFriends = ['Farida', 'Shalyne', 'Sylvia', 'Trecy'];

  print('My name is $name, i am $age1 years old. \n I would say im quite tall ($height) but that makes sense because its $isStudent I am a university student. \n My friends are $myFriends');

  //conversion and display funtion
  convertAndDisplay('38');

  //Uses a switch statement to print the day of the week based on a given int (1 for Monday, 2 for Tuesday, etc.). 
  int day = 3;
  switch(day){
    case 1:
      print('Monday: Lets code!');
      break;
    case 2:
      print('Tuesday: Keep coding!');
      break;
    case 3:
      print('Wednesday: Halfway through!');
      break;
    default:
      print('Time for the weekend!');
  }

  //Uses if-else statements to determine if a person is eligible to vote based on age (must be 18 or older). 
  var age = 19;

  if (age >= 18){
    print ('I can vote');
  }
  else if (age == 18){
    print('I am just old enough to vote in kenya.');
  }
  else{
    print('I am still too young to vote.');
  }

  //A for loop that prints numbers from 1 to 10. 
  for(int i=1; i<=10; i++)
  print('This is loop iteration $i');

  //1. Defines a List of int numbers. Uses a for loop to iterate through the list and: Print each number.
  var list1 = [10,20,30,40,50];  
    for(var i in list1)
    {  
        print(i); 
    } 

  //A while loop that prints numbers from 10 to 1.
  printCountdown();

  // A do-while loop that prints numbers from 1 to 5.
  printUpward();

  //Uses if-else statements to check if a number is positive, negative, or zero. 

 int number = 42;

  //Check if the number is positive, negative, or zero
  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('The number is zero');
  }

  //Check if the number is even or odd
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }

  //Categorize the number using a switch
  switch (true) {
    case true when number >= 1 && number <= 10:
      print('$number is a small number');
      break;
    case true when number >= 11 && number <= 100:
      print('$number is a medium number');
      break;
    case true when number > 100:
      print('$number is a large number');
      break;
    default:
      print('$number is out of categorized range');
  }
}



//Function for Conversion: Write a function convertAndDisplay that: Takes a String representing a number. Converts the String to int and double. Prints the results.
void convertAndDisplay(String numString){
  int numInt = int.parse(numString);
  double numDouble = double.parse(numString);
  print('The integer value is $numInt and the double value is $numDouble');
}

//A while loop that prints numbers from 10 to 1.
void printCountdown() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// A do-while loop that prints numbers from 1 to 5.
void printUpward() {
  int j = 1;
  do {
    print(j);
    j++;
  } while (j <= 5);
}
void printName(){
  print('Bonface');
}

void findSum(int num1, int num2){
  int sum = num1 + num2;
  print('The sum of $num1 and $num2 is: $sum');
}

void printFullName(String name){
  print('My name is $name');
}

String instructorName(){
  return 'Esther';
}

int add(int a, int b){
  return a+b;
}

void main(){
  printName();
  findSum(10, 20);
  printFullName('Aron Jackson');

  String instructor = instructorName();
  print('The instructors name is: $instructor');

  int result = add(10, 20);
  print('The sum of 10 and 20 is: $result');
}
// The 4hrs tutorial
import "dart:math";
import 'dart:io';

void newFunction() {
  print('!@#%^&*()');
}

void main() {
  print('Hello World!');

  print('    /|');
  print('   / |');
  print('  /  |');
  print(' /   |');
  print('/____|');

  // name is the variable and String is the data type
  String name = "Newton";
  String age = '50';

  print('There once was a man named $name');
  print('He was $age years old');
  print('He loved pyramids and triangles');

  // The process of changing the initial value is called interpolation.

  name = 'Waje';
  age = '80';

  print('And $name likes kolanuts');
  print('But I am not sure he likes being $age');

  String firstName = 'Hassan';
  int hassanAge = 19;
  double gpa = 3.8;
  bool isRegisteredBVN = true;

  print(firstName);
  print(hassanAge);
  print(gpa);
  print(isRegisteredBVN);

  String greeting = 'Hello';
  //                 01234


  String greeting2 = ' beautiful lady!';

  print(greeting.length);
  print(greeting[0]);
  print(greeting.toUpperCase());
  print(greeting.indexOf('e'));
  print(greeting.contains('l'));

  // The process of adding a string to another string is called concatenation

  print(greeting + greeting2);
  print("The greeting is: ${greeting + greeting2}");

  // Integers and double data type
  int quantity = 100;
  double price = 99.99;

  print(quantity / 2);
  quantity = quantity + 50;
  quantity += 70;
  quantity++;
  print(quantity);

  print(price);

  print(4 + 70 * (67 / 24));
  print(34 % 5);


  // To be able to do this kind of complex mathematical calculations you'll need to import dart:math

  print(min(1, 9));
  print(sqrt(144));

  print(5 > 3);

  // The first step to collect a data from a user

  /*

  print('What is your name?:');
  String username = stdin.readLineSync()!;
  print('Hello $username');

  // How to build a mini calculstor

  print('Enter first number:');
  String firstNumber = stdin.readLineSync()!;
  print('Enter second number:');
  String secondNumber = stdin.readLineSync()!;

  print(int.parse(firstNumber) + int.parse(secondNumber));

  print(firstNumber + secondNumber);

  */

  /*

  print('Enter a color: ');
  String color = stdin.readLineSync()!;

  print('Enter a plural noun: ');
  String pluralNoun = stdin.readLineSync()!;

  print('Enter a celebrity: ');
  String celebrity = stdin.readLineSync()!;

  print('Roses are $color');
  print('$pluralNoun are blue');
  print('I love $celebrity');

  */

  List<int> favoriteNumber = [1, 3, 5, 7, 9];
  print(favoriteNumber);

  // To add a new value to our variables

  favoriteNumber.add(13);

  // To remove any value from the prameters that was signified below

  favoriteNumber.remove(3);

  // You can change the value of the index positions of the int numbers by calling the variable and changing it specifically
  favoriteNumber[3] = 70;
  print(favoriteNumber); 

  newFunction();

  sayHi('Mike', 40);
  sayHi('Luqman', 24);

  double answer = addNumbers(12, 15);
  print(answer);

  print(addNumbers(24, 40));  

  String color = prompt('Enter a color: ');
  print('The color is $color');
  }

  void sayHi(String username, int age) {
    print('Hi ${username}!, you are $age!');
  }

  double addNumbers(double num1, double num2) {
    return num1 + num2;
  }

  String prompt(String promptText) {
    print(promptText);
    String answer = stdin.readLineSync()!;
    return answer;
  }


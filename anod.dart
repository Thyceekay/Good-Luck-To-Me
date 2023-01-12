import 'dart:io';

void main() {

  String music = 'Nice';

  if(music.contains('e')) {
    print('Asake is good');
  } else {
    print('Asake is extra good');
  }

  bool isSmart = true;
  bool isStudent = false;

  if(isSmart && isStudent) {
    print('You must be really smart to be here');
} else if(isSmart && !isStudent){
    print('You are smart but not a student');
    } else if(!isSmart && isStudent){
      print('You are a student but not smart');
    } else {
      print('You are not smart and not a students also');
    }


    /*
    double num1 = promptDouble();
    double num2 = promptDouble();
    String op = prompt('Enter an operation (+,-,/,*); ');

    /*
    if(op == '+'){
      print(num1 + num2);
    } else if(op == '-'){
      print(num1 - num2);
    } else if(op == '/'){
      print(num1 / num2);
    } else if(op == '*'){
      print(num1 * num2);
    } else {
      print('invalid operator');
    }
    */

    switch(op){
      case '+':
        print(num1 + num2);
        break;
      case '*':
        print(num1 * num2);
        break;
      case '/':
        print(num1 / num2);
        break;
      case '-':
        print(num1 - num2);
        break;
      default:
      print('Invalid Operator');

    */

    List<String> friends = ['CKay', 'Lamea', 'Laff'];

    int i = 0;
    while(i < 3){ // Loop guard and we can set it in the bracket that i < friends.length
      print(
        friends[i]
      );
      i++;
    }

    for(String friend in friends){
      print(friend);
    }
    


    String answer = 'Micheal Scott';
    String guess = '';
    int guessCount = 0;

    while(guess != answer){
      guess = prompt('Enter a guess:');
      guessCount++;
    }

    print('You Won in $guessCount guesses!');

    drawTriangle(5);

}

  void drawTriangle(int newTriangles){
    for(int i = 0; i < newTriangles; i++){
      print(' /|');
      print('/ |');
    }
  }

  String prompt(String promptText) {
    print('$promptText');
    String answer = stdin.readLineSync()!;
    return answer;
  }
  double promptDouble() {
    print('Enter a Number: ');
    double myNum = double.parse(stdin.readLineSync()!);
    return myNum;
  }
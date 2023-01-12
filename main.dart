import 'dart:core';

/*
bool stringValidator(String stringValid) {
  if(
    stringValid.length >=6 
    && stringValid.length <=15 
    && stringValid.contains(RegExp(r'[A-Z]')) 
    && stringValid.contains(RegExp(r'[a-z]')) 
    && stringValid.contains(RegExp(r'[>$%0-9-]'))
    && stringValid.contains(RegExp(r'[0-9-]'))
    )
   {
    return true;
  } else {
    return false;
  }
  
} 
bool upToSixLessThanFifteen(string) {
  if (string.length >= 6 && string.length <= 15) {
    return true;
  } else {
    return false;
  }
}

String onlyLowerCase(String lowerCase) {
  return lowerCase;
}

String onlyUpperCase(String upperCase) {
  return upperCase;
}

String numLengthMoreThanTwo(String num) {
  return num;
}

String oneCharacter(String character) {
  return character;
}

*/

bool containsExactlyOneCharacter(String text) {
  ///Convert the string into an array
  final textArray = text.split('');

  ///Has to be within the range of 36 to 37
  for (final i in textArray) {
    final asciiValue = i.codeUnitAt(0);
    if (text.contains('%') && text.contains('\$')) {
      return false;
    }
    if (text.contains('%') && text.contains('>')) {
      return false;
    }
    if (text.contains('>') && text.contains('\$')) {
      return false;
    }
    if (text.contains('>') && text.contains('%')) {
      return false;
    }
    if (text.contains('\$') && text.contains('>')) {
      return false;
    }
    if (text.contains('\$') && text.contains('%')) {
      return false;
    }
    if (text.contains('\$') && text.contains('%') && text.contains('>')) {
      return false;
    }

    if (asciiValue >= 36 && asciiValue <= 37 || asciiValue == 62) {
      if (text.contains('>') || text.contains('%') || text.contains('\$')) {
        return true;
      }
    }
  }
  return false;
}

bool isExactlyOneCharacter(String text) {
  ///Convert the string into an array
  final textArray = text.split('');
  var perc = '%';
  var great = '>';
  var dol = '\$';

  ///Has to be within the range of 97 to 122
  for (final i in textArray) {
    final asciiValue = i.codeUnitAt(0);
    if (asciiValue >= 36 && asciiValue <= 37) {
      if (great.length > 0 && dol.length > 0 && perc.length > 0) {
        return false;
      }
    }
  }
  return true;
}

void main() {
  /*
  print('Whatever it is to be printed must contain at least a lowercase and a uppercase');
  print('And must contain a minimum of 6 and maximum of 15 characters');
  print('And must contain at least a number and a character from the following list: [%, >, and the dollar sign]');
  print(stringValidator("StrIng%4"));
  print(stringValidator("two"));2

  print(upToSixLessThanFifteen('Musicians'));
  print(upToSixLessThanFifteen('Music'));

  // It contains a lowercase
  String lowercase = onlyLowerCase('abcdefghijklmnopqrstuvwxyz');
  print(lowercase.contains('a'));
  print(lowercase.contains('!G'));

  // it contains a upper case
  String uppercase = onlyUpperCase('ABCDEFGHIJKLMNOPQRSTUVWXYZ');
  print(uppercase.contains('D'));
  print(uppercase.contains('a38'));

  // it contains at least two numbers
  String justNumbers = numLengthMoreThanTwo('0123456789');
  justNumbers.length >= 1;
  print(justNumbers.contains('23'));
  print(justNumbers.contains('2t'));

  // it contains exactly one character
  String character = oneCharacter('%, ?, >');
  character.length == 0;
  print(character.contains('%'));
  print(character.contains('<'));

  */

  print(containsExactlyOneCharacter('%thrybf'));
  print(containsExactlyOneCharacter('>tyrh'));
  print(containsExactlyOneCharacter('>%dfyuiojhgch'));

  print(isExactlyOneCharacter('>thhg'));
  print(isExactlyOneCharacter('th>%fb'));
 
}

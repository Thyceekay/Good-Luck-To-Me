
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


void main() {
  print('Whatever it is to be printed must contain at least a lowercase and a uppercase');
  print('And must contain a minimum of 6 and maximum of 15 characters');
  print('And must contain at least a number and a character from the following list: [%, >, and the dollar sign]');
  print(stringValidator("StrIng%4"));
  print(stringValidator("two"));

  
  
}

























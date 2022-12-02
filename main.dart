import "dart:math";

void main() {

  String randPass = '';
  String letters = "abcdefghijklmnopqrstuvwxyz";
  String numbers = "0123456789";
  String special = "!@#%^&*()_+-=<>/?:{]`}";

  for(int i=0;i<2;i++){
    var randNr = new Random();
    randPass += letters.split('')[randNr.nextInt(letters.length)];
    randPass += numbers.split('')[randNr.nextInt(numbers.length)];
    randPass += letters.toUpperCase().split('')[randNr.nextInt(letters.length)];
    randPass += special.split('')[randNr.nextInt(special.length)];
  }


  print(randPass);
}
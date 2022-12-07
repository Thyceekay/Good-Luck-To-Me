
import 'dart:ffi';

void stringValidator(String Count1, String Count2) {
  print('$Count1 with $Count2');
  bool isEqual = Count1 == Count2;
  print(isEqual);
  bool isEqual1 = Count1 != Count2;
  print(isEqual1);
}
void main() {
  stringValidator("1gH2>", "Lit3b4%");
}


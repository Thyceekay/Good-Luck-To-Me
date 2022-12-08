
import 'dart:io';

bool stringValidator(String string) {
  return false;
}
bool isUpToSixCharacters(String string) {
  if (string.length >= 6) {
  return true;
  }
  return false;
  
}
void main() {
  stringValidator("1gH2>");
  print(isUpToSixCharacters("String"));
  
}


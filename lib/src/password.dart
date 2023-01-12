import 'dart:math';

const String _basic = "qwertzuiopasdfghjklyxcvbnm1234567890";
const String _special = "qwertzuiopasdfghjklyxcvbnm1234567890_:?!%!@#^&*";
//TODO: replace with safe generator
Random rdm = new Random();
void main() {
  print("Basic password: " + basic(10));
  print("Special password: " + special(10));
}

String basic(int length) {
  String password = "";
  for (int i = 0; i < length; i++) {
    password += _basic[rdm.nextInt(_basic.length)];
  }
  return password;
}

String special(int length) {
  String password = "";
  for (int i = 0; i < length; i++) {
    password += _special[rdm.nextInt(_special.length)];
  }
  return password;
}

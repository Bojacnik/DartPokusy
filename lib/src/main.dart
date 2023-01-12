import 'dart:async';
import 'dart:io';

import 'package:ahoj/src/getit.dart';
import 'http/connection_checker.dart';

void main() async {
  setup();
  main2();
  print("koncim");
}

void main2() async {
  ConnectionChecker cc = ConnectionChecker();
  cc.start();
}

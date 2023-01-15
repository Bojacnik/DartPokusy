import 'package:ahoj/src/getit.dart';
import 'connection/connection_checker_abs.dart';

void main() async {
  setup();
  main2();
  print("koncim");
}

void main2() async {
  ConnectionChecker cc = getIt.get<ConnectionChecker>();
  print(await cc.check());
}

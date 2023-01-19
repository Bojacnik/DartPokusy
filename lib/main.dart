import 'package:ahoj/getit.dart';
import 'connection/connection_checker_abs.dart';

import 'data/zvire.dart';

void main() async {
  await configureInjection();
  main3();
  print("koncim");
}

void main2() async {
  ConnectionChecker cc = getIt.get<ConnectionChecker>();
  print(await cc.check());
}

void main3() async {
  Zvire zvire = getIt.get<Zvire>();
  print(zvire.arms);
}

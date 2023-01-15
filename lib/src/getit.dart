import 'package:ahoj/src/connection/connection_checker.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ConnectionCheckerImpl>(ConnectionCheckerImpl());
}

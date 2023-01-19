import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'KEY', obfuscate: true)
  static final key = _Env.key;

  @EnviedField(varName: 'STRING1')
  static const STRING1 = _Env.STRING1;
}

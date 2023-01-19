import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'getit.config.dart';

late GetIt getIt;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureInjection() async => getIt = init(GetIt.instance);

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ahoj/src/connection/connection_checker.dart' as _i4;
import 'package:ahoj/src/connection/connection_checker_abs.dart' as _i3;
import 'package:ahoj/src/data/zvire.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ConnectionChecker>(_i4.ConnectionCheckerImpl());
  gh.singleton<_i5.Zvire>(_i5.Jelen.normalni());
  return getIt;
}

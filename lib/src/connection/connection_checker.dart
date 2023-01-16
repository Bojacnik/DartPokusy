import 'dart:io';

import 'package:ahoj/src/connection/connection_checker_abs.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../getit.dart';

@Singleton(as: ConnectionChecker)
class ConnectionCheckerImpl extends ConnectionChecker {
  final InternetConnectionChecker _checker = new InternetConnectionChecker();

  void start() {
    _checker.addresses = [
      AddressCheckOptions(
          address: InternetAddress("8.8.8.8", type: InternetAddressType.IPv4),
          port: 443,
          timeout: Duration(seconds: 10)),
      AddressCheckOptions(
          address: InternetAddress("1.1.1.1", type: InternetAddressType.IPv4),
          port: 443,
          timeout: Duration(seconds: 10)),
      AddressCheckOptions(
          address: InternetAddress("1.1.1.1", type: InternetAddressType.IPv4),
          port: 80,
          timeout: Duration(seconds: 10)),
    ];
    _checker.onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          print('Connected');
          break;
        case InternetConnectionStatus.disconnected:
          print('Disconnected');
          break;
      }
    });
  }

  Future<bool> check() async {
    _checker.addresses = [
      AddressCheckOptions(
          address: InternetAddress("8.8.8.8", type: InternetAddressType.IPv4),
          port: 443,
          timeout: Duration(seconds: 10)),
      AddressCheckOptions(
          address: InternetAddress("1.1.1.1", type: InternetAddressType.IPv4),
          port: 443,
          timeout: Duration(seconds: 10)),
      AddressCheckOptions(
          address: InternetAddress("1.1.1.1", type: InternetAddressType.IPv4),
          port: 80,
          timeout: Duration(seconds: 10)),
    ];
    return _checker.hasConnection;
  }
}

void main() {
  ConnectionCheckerImpl icc = getIt.get<ConnectionCheckerImpl>();
  icc.start();
}

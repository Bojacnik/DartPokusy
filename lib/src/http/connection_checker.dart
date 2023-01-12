import 'dart:async';
import 'dart:io';

import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../getit.dart';

class ConnectionChecker {
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
}

void main() {
  ConnectionChecker icc = getIt.get<ConnectionChecker>();
  icc.start();
}

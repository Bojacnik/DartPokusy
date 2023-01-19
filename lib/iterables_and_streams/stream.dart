import 'stream_helper.dart';

Stream<int> signaler() async* {
  yield await Future.delayed(new Duration(seconds: 5), (() => 3));

  yield 4;
  yield 5;
}

void reactor(int event) async {
  if (event == 3)
    print("tři");
  else if (event == 4)
    print("čtyři");
  else if (event == 5)
    print("pět");
  else {
    print("Tohle neznam: $event");
  }
}

void main() {
  Stream<int> signals = signaler();
  /*
  signals.listen((event) {
    reactor(event);
  }); */
  //Future<int> r = signals.fold(1, (previous, element) => previous * element);
  //int vysledek = await r;

  //Future<bool> vysledek = signals.every((element) => element is int);
  //Future<int> vysledek = signals.firstWhere((element) => element == 4);
  //print(await vysledek);

  Stream<int> s = signals.map((event) => event + 1);
  printWaitStream(s);
}

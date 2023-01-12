import 'dart:math';

void main() {
  List<Future<int>> futures = <Future<int>>[
    funkce(),
    funkce(),
    funkce(),
  ];
  print(futures);
  Stream<dynamic> s = Stream.fromFutures(futures);
  s.listen(
    ((event) async => print(await event)),
    onDone: () => print("Stream \"fjůčrů\" hotov."),
  );
}

Future<int> funkce() async {
  return Random.secure().nextInt(2);
}

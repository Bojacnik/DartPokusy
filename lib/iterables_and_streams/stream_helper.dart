void printStream(Stream str) async {
  List<dynamic> items = [];
  await for (var element in str) {
    items.add(element);
  }
  print(items);
}

void printListenStream(Stream str) {
  str.listen((event) {
    print(event);
  });
}

void printWaitStream(Stream str) {
  str.listen(
    (event) {
      print(event);
    },
    onDone: () => {
      print("Čtení streamu hotovo!"),
    },
  );
}

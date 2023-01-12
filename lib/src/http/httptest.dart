import 'dart:convert';
import 'package:http/http.dart' as http;

void httpRozdelane() async {
  Future<http.Response> query = http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  http.Response queryFinished = await query;

  print(queryFinished.statusCode);
  print(queryFinished.body);

  String toParse = queryFinished.body.toString();
  dynamic decoded = json.decode(toParse);

  print(decoded.toString());
  print(decoded.runtimeType);
  print("končim bracho");
}

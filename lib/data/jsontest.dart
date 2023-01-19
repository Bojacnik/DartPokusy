import 'dart:convert';
import 'dart:io';

import 'package:ahoj/data/MyModel.dart';

void main() async {
  var model = MyModel(5, "Pepa z depa");
  var map = model.toJson();
  print(map);
  var jsonString = jsonEncode(map);
  print(jsonString);

  var file = File("../../storage/json/MyModel/${model.id}.json");
  await file.writeAsString(jsonString);

  var model2 = FinalMyModel(5, "Pepa z depa");
  var map2 = model2.toJson();
  print(map2);
  var jsonString2 = jsonEncode(map2);
  print(jsonString2);

  var file2 = File("../../storage/json/FinalMyModel/${model2.id}.json");
  await file2.writeAsString(jsonString2);
}

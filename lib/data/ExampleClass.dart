/*
import 'package:json_annotation/json_annotation.dart';

part 'example.g.dart';

@JsonSerializable()
class ExampleClass<T> {
  final T field1;

  ExampleClass(this.field1);

  factory ExampleClass.fromJson(Map<String, dynamic> json) =>
      _$ExampleClassFromJson<T>(json);
  Map<String, dynamic> toJson() => _$ExampleClassToJson(this);
}

class ExampleClassConverter<T>
    implements JsonConverter<ExampleClass<T>, Map<String, dynamic>> {
  const ExampleClassConverter();

  @override
  ExampleClass<T> fromJson(Map<String, dynamic> json) {
    return ExampleClass.fromJson(json);
  }
7
  @override
  Map<String, dynamic> toJson(ExampleClass<T> exampleClass) {
    return exampleClass.toJson();
  }
}
*/
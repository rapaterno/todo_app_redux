import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializer.dart';
part 'todo.g.dart';

abstract class Todo implements Built<Todo, TodoBuilder> {
  String get id;
  String get name;
  bool get isComplete;

  Todo._();

  factory Todo([void Function(TodoBuilder) updates]) = _$Todo;

  String toJson() {
    return json.encode(serializers.serializeWith(Todo.serializer, this));
  }

  static Todo fromJson(String jsonString) {
    return serializers.deserializeWith(
        Todo.serializer, json.decode(jsonString))!;
  }

  static Serializer<Todo> get serializer => _$todoSerializer;
}

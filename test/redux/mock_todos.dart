import 'package:built_collection/built_collection.dart';
import 'package:todo_app_redux/data/model/todo.dart';

List<Todo> mockTodos = [
  Todo((todo) => todo
    ..id = '1'
    ..name = 'Todo 1'
    ..isComplete = false),
  Todo((todo) => todo
    ..id = '2'
    ..name = 'Todo 2'
    ..isComplete = false),
  Todo((todo) => todo
    ..id = '3'
    ..name = 'Todo 3'
    ..isComplete = false),
  Todo((todo) => todo
    ..id = '4'
    ..name = 'Todo 4'
    ..isComplete = false)
];

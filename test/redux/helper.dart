import 'package:built_collection/built_collection.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/todo/todo_state.dart';

TodoState setup(List<Todo> setupTodos) {
  List<String> _incompleteIds = [];
  List<String> _completeIds = [];
  Map<String, Todo> _todos = {};

  setupTodos.forEach((element) {
    _todos[element.id] = element;
    if (element.isComplete) {
      _completeIds.add(element.id);
    } else {
      _incompleteIds.add(element.id);
    }
  });
  return TodoState((builder) => builder
    ..todos = _todos.build().toBuilder()
    ..completeIds = _completeIds.build().toBuilder()
    ..incompleteIds = _incompleteIds.build().toBuilder());
}

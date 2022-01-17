import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'todo_state.g.dart';

abstract class TodoState implements Built<TodoState, TodoStateBuilder> {
  // Fields
  BuiltMap<String, Todo> get todos;
  BuiltList<String> get completeIds;
  BuiltList<String> get incompleteIds;

  TodoState._();

  factory TodoState.initial() {
    return TodoState((builder) => builder
      ..todos = <String, Todo>{}.build().toBuilder()
      ..completeIds = <String>[].build().toBuilder()
      ..incompleteIds = <String>[].build().toBuilder());
  }

  factory TodoState.setup(List<Todo> setupTodos) {
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

  factory TodoState([void Function(TodoStateBuilder) updates]) = _$TodoState;
}

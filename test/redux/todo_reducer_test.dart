import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_reducer.dart';

void main() {
  group('TodoReducer', () {
    BuiltList<Todo> mockTodos = [
      Todo((b) => b
        ..id = '1'
        ..name = 'todo 1'
        ..isComplete = false),
      Todo((b) => b
        ..id = '2'
        ..name = 'todo 2'
        ..isComplete = false),
      Todo((b) => b
        ..id = '3'
        ..name = 'todo 3'
        ..isComplete = false),
    ].build();
    test('when creating todo', () {
      BuiltList<Todo> state = <Todo>[].build();
      final todo = mockTodos[0];

      final stateBuilder = state.toBuilder();

      final newState = todoReducer(
          state, SuccessCreateTodoAction((b) => b..todo = todo.toBuilder()));

      expect(state[0], todo);
    });

    test('when reading todos', () {
      BuiltList<Todo> state = <Todo>[].build();

      final newState = todoReducer(state,
          SuccessReadTodoAction((b) => b..todos = mockTodos.toBuilder()));

      expect(newState, mockTodos);
    });
  });
}

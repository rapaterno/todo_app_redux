import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
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

      final newState = todoReducer(
          state, SuccessCreateTodoAction((b) => b..todo = todo.toBuilder()));

      expect(newState[0], todo);
    });

    test('when reading todos', () {
      BuiltList<Todo> state = <Todo>[].build();

      final newState = todoReducer(state,
          SuccessReadTodoAction((b) => b..todos = mockTodos.toBuilder()));

      expect(newState, mockTodos);
    });

    test('when updating todo', () {
      BuiltList<Todo> state = mockTodos;
      final updatedTodoBuilder = mockTodos[2].toBuilder();
      updatedTodoBuilder.isComplete = true;

      final newState = todoReducer(state,
          SuccessUpdateTodoAction((b) => b..updatedTodo = updatedTodoBuilder));

      expect(newState[2], updatedTodoBuilder.build());
    });

    test('when deleting todo', () {
      BuiltList<Todo> state = mockTodos;

      final newState = todoReducer(
          state,
          SuccessDeleteTodoAction(
              (b) => b..deletedTodo = mockTodos[0].toBuilder()));

      expect(newState.length, mockTodos.length - 1);
    });
  });
}

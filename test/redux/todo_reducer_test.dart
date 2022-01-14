import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_reducer.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';

import '../mock_todos.dart';

void main() {
  group('TodoReducers', () {
    test('when creating todo', () {
      BuiltList<Todo> initialTodos = <Todo>[].build();
      final todo = mockTodos[0];
      final state =
          AppState((builder) => builder..todosState = initialTodos.toBuilder());

      final newState = appReducer(
          state, SuccessCreateTodoAction((b) => b..todo = todo.toBuilder()));

      expect(newState.todosState[0], todo);
    });

    test('when reading todos', () {
      BuiltList<Todo> initialTodos = <Todo>[].build();
      final state =
          AppState((builder) => builder..todosState = initialTodos.toBuilder());

      final newState = appReducer(
          state,
          SuccessReadTodoAction(
              (b) => b..todos = mockTodos.build().toBuilder()));

      expect(newState.todosState, mockTodos);
    });

    test('when updating todo', () {
      final state = AppState(
          (builder) => builder..todosState = mockTodos.build().toBuilder());
      final updatedTodoBuilder = mockTodos[2].toBuilder();
      updatedTodoBuilder.isComplete = true;

      final newState = appReducer(state,
          SuccessUpdateTodoAction((b) => b..updatedTodo = updatedTodoBuilder));

      expect(newState.todosState[2], updatedTodoBuilder.build());
    });

    test('when deleting todo', () {
      final state = AppState(
          (builder) => builder..todosState = mockTodos.build().toBuilder());

      final newState = appReducer(
          state,
          SuccessDeleteTodoAction(
              (b) => b..deletedTodo = mockTodos[0].toBuilder()));

      expect(newState.todosState.length, mockTodos.length - 1);
    });
  });
}

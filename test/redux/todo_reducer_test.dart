import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_reducer.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_state.dart';

import '../mock_todos.dart';
import 'helper.dart';

void main() {
  group('TodoReducers', () {
    test('when creating todo', () {
      BuiltList<Todo> initialTodos = <Todo>[].build();
      final todo = mockTodos[0];

      final todoState = TodoState.initial();
      final state =
          AppState((builder) => builder..todosState = todoState.toBuilder());

      final newState = appReducer(
          state, SuccessCreateTodoAction((b) => b..todo = todo.toBuilder()));

      expect(newState.todosState.todos[todo.id], todo);
    });

    test('when reading todos', () {
      BuiltList<Todo> initialTodos = <Todo>[].build();
      final state = AppState(
          (builder) => builder..todosState = TodoState.initial().toBuilder());

      final newState = appReducer(
          state,
          SuccessReadTodoAction(
              (b) => b..todos = mockTodos.build().toBuilder()));

      final testTodos = [];
      newState.todosState.completeIds.forEach((id) {
        testTodos.add(newState.todosState.todos[id]);
      });
      newState.todosState.incompleteIds.forEach((id) {
        testTodos.add(newState.todosState.todos[id]);
      });
      expect(testTodos, mockTodos);
    });

    test('when updating todo', () {
      final state = AppState(
          (builder) => builder..todosState = setup(mockTodos).toBuilder());
      final updatedTodoBuilder = mockTodos[2].toBuilder();
      updatedTodoBuilder.isComplete = true;

      final newState = appReducer(state,
          SuccessUpdateTodoAction((b) => b..updatedTodo = updatedTodoBuilder));

      expect(newState.todosState.todos[mockTodos[2].id],
          updatedTodoBuilder.build());
      expect(newState.todosState.completeIds.contains(mockTodos[2].id), true);
      expect(
          newState.todosState.incompleteIds.contains(mockTodos[2].id), false);
    });

    test('when deleting todo', () {
      final state = AppState(
          (builder) => builder..todosState = setup(mockTodos).toBuilder());

      final newState = appReducer(
          state,
          SuccessDeleteTodoAction(
              (b) => b..deletedTodo = mockTodos[0].toBuilder()));

      expect(newState.todosState.todos.length, mockTodos.length - 1);
      expect(
          newState.todosState.incompleteIds.length +
              newState.todosState.completeIds.length,
          mockTodos.length - 1);
    });
  });
}

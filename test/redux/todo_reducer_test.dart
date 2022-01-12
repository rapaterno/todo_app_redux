import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_reducer.dart';

void main() {
  group('TodoReducer', () {
    test('when creating todo', () {
      BuiltList<Todo> state = <Todo>[].build();
      final todo = Todo((b) => b
        ..id = '1'
        ..name = 'todo 1'
        ..isComplete = false);

      final stateBuilder = state.toBuilder();

      state = todoReducer(
          state, SuccessCreateTodoAction((b) => b..todo = todo.toBuilder()));

      expect(state[0], todo);
    });
  });
}

import 'package:built_collection/built_collection.dart';
import 'package:todo_app_redux/data/model/todo.dart';

import 'todo_actions.dart';

BuiltList<Todo> todoReducer(BuiltList<Todo> state, dynamic action) {
  if (action is SuccessCreateTodoAction) {
    final stateBuilder = state.toBuilder();
    stateBuilder.add(action.todo);
    return stateBuilder.build();
  }

  return state;
}

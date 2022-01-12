import 'package:built_collection/built_collection.dart';
import 'package:todo_app_redux/data/model/todo.dart';

import 'todo_actions.dart';

BuiltList<Todo> todoReducer(BuiltList<Todo> state, dynamic action) {
  if (action is SuccessCreateTodoAction) {
    return _createTodo(state, action);
  } else if (action is SuccessReadTodoAction) {
    return _readTodos(action);
  } else if (action is SuccessUpdateTodoAction) {
    return _updateTodo(state, action);
  } else if (action is SuccessDeleteTodoAction) {
    return _deleteTodo(state, action);
  }

  return state;
}

BuiltList<Todo> _deleteTodo(
    BuiltList<Todo> state, SuccessDeleteTodoAction action) {
  final stateBuilder = state.toBuilder();
  stateBuilder.removeWhere((todo) => todo.id == action.deletedTodo.id);
  return stateBuilder.build();
}

BuiltList<Todo> _readTodos(SuccessReadTodoAction action) {
  return action.todos;
}

BuiltList<Todo> _createTodo(
    BuiltList<Todo> state, SuccessCreateTodoAction action) {
  final stateBuilder = state.toBuilder();
  stateBuilder.add(action.todo);
  return stateBuilder.build();
}

BuiltList<Todo> _updateTodo(
    BuiltList<Todo> state, SuccessUpdateTodoAction action) {
  final replaceIdx =
      state.indexWhere((todo) => todo.id == action.updatedTodo.id);

  final stateBuilder = state.toBuilder();
  stateBuilder.replaceRange(replaceIdx, replaceIdx + 1, [action.updatedTodo]);

  return stateBuilder.build();
}

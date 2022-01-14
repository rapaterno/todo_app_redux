import 'package:redux/redux.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';

final Reducer<AppState> appReducer = combineReducers<AppState>([
  TypedReducer<AppState, SuccessDeleteTodoAction>(deleteTodo),
  TypedReducer<AppState, SuccessReadTodoAction>(readTodo),
  TypedReducer<AppState, SuccessCreateTodoAction>(createTodo),
  TypedReducer<AppState, SuccessUpdateTodoAction>(updateTodo),
  TypedReducer<AppState, SetTodoStatusAction>(setStatus)
]);

AppState deleteTodo(AppState state, SuccessDeleteTodoAction action) {
  final todosBuilder = state.todosState.toBuilder();
  todosBuilder.removeWhere((todo) => todo.id == action.deletedTodo.id);
  return state
      .rebuild((stateBuilder) => stateBuilder..todosState = todosBuilder);
}

AppState readTodo(AppState state, SuccessReadTodoAction action) {
  return state.rebuild(
      (stateBuilder) => stateBuilder..todosState = action.todos.toBuilder());
}

AppState createTodo(AppState state, SuccessCreateTodoAction action) {
  final todosBuilder = state.todosState.toBuilder();
  todosBuilder.add(action.todo);
  return state
      .rebuild((stateBuilder) => stateBuilder..todosState = todosBuilder);
}

AppState updateTodo(AppState state, SuccessUpdateTodoAction action) {
  final replaceIdx =
      state.todosState.indexWhere((todo) => todo.id == action.updatedTodo.id);

  final todoBuilder = state.todosState.toBuilder();
  todoBuilder.replaceRange(replaceIdx, replaceIdx + 1, [action.updatedTodo]);

  return state
      .rebuild((stateBuilder) => stateBuilder..todosState = todoBuilder);
}

AppState setStatus(AppState state, SetTodoStatusAction action) {
  return state.rebuild((stateBuilder) =>
      stateBuilder..statuses[action.statusKey] = action.status);
}

import 'package:redux/redux.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_reducer.dart';

final Reducer<AppState> appReducer = combineReducers<AppState>(
    [_reducers, TypedReducer<AppState, SetTodoStatusAction>(_setStatus)]);

AppState _reducers(AppState state, dynamic action) {
  return state.rebuild((updates) =>
      updates..todosState = todoReducer(state.todosState, action).toBuilder());
}

AppState _setStatus(AppState state, SetTodoStatusAction action) {
  return state.rebuild((stateBuilder) =>
      stateBuilder..statuses[action.statusKey] = action.status);
}

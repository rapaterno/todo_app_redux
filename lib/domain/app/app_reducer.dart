import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState((updates) =>
      updates..todosState = todoReducer(state.todosState, action).toBuilder());
}

import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_app_redux/data/provider/uuid_provider.dart';
import 'package:todo_app_redux/data/repository/todo_repository.dart';
import 'package:todo_app_redux/domain/app/app_reducer.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_epic_middleware.dart';

Store<AppState> createStore() {
  final AbstractTodoRepository _todoRepository = TodoRepository();
  final AbstractUuidProvider _uuidProvider = UuidProvider();
  final todoMiddleware = TodoMiddleware(_todoRepository, _uuidProvider);

  final epics = combineEpics<AppState>([todoMiddleware]);

  return Store(appReducer,
      initialState: AppState.initial(), middleware: [EpicMiddleware(epics)]);
}

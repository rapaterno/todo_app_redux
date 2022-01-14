import 'package:built_collection/built_collection.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/data/provider/uuid_provider.dart';
import 'package:todo_app_redux/data/repository/todo_repository.dart';
import 'package:todo_app_redux/domain/app/app_reducer.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';

class TodoMiddleware implements EpicClass<AppState> {
  final AbstractTodoRepository _todoRepository;
  final AbstractUuidProvider _uuidProvider;

  TodoMiddleware(this._todoRepository, this._uuidProvider);

  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>(
        [_createTodo, _readTodo, _updateTodo, _deleteTodo])(actions, store);
  }

  Stream<TodoAction> _updateTodo(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoUpdateTodoMiddlewareAction) {
        try {
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.loading);
          await _todoRepository.update(action.updatedTodo);
          yield SuccessUpdateTodoAction((updates) =>
              updates..updatedTodo = action.updatedTodo.toBuilder());
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.success);
        } catch (e) {
          //TODO: Add ErrorAction
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.error);
        }
      }
    }
  }

  Stream<TodoAction> _readTodo(
      Stream<dynamic> actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is DoReadTodoMiddlewareAction) {
        try {
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.loading);
          final todos = await _todoRepository.read();
          yield SuccessReadTodoAction(
              (updates) => updates..todos = todos.build().toBuilder());
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.success);
        } catch (e) {
          //TODO: Add ErrorAction
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.error);
        }
      }
    }
  }

  Stream<TodoAction> _deleteTodo(
      Stream<dynamic> actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is DoDeleteTodoMiddlewareAction) {
        try {
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.loading);
          await _todoRepository.delete(action.deletedTodo);
          yield SuccessDeleteTodoAction((updates) =>
              updates..deletedTodo = action.deletedTodo.toBuilder());
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.success);
        } catch (e) {
          //TODO: Add ErrorAction
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.error);
        }
      }
    }
  }

  Stream<TodoAction> _createTodo(
      Stream<dynamic> actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is DoCreateMiddlewareTodoAction) {
        final todo = Todo((b) => b
          ..id = _uuidProvider.generateUuid()
          ..name = action.name
          ..isComplete = false);
        try {
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.loading);
          await _todoRepository.create(todo);
          yield SuccessCreateTodoAction(
              (updates) => updates..todo = todo.toBuilder());
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.success);
        } catch (e) {
          yield ErrorCreateTodoAction(
              (updates) => updates..error = e.toString());
          yield SetTodoStatusAction((updates) => updates
            ..statusKey = action.statusKey
            ..status = Status.error);
        }
      }
    }
  }
}

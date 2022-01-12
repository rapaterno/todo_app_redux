import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/data/provider/uuid_provider.dart';
import 'package:todo_app_redux/data/repository/todo_repository.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';

class TodoMiddleware extends MiddlewareClass<BuiltList<Todo>> {
  final AbstractTodoRepository _todoRepository;
  final AbstractUuidProvider _uuidProvider;

  TodoMiddleware(this._todoRepository, this._uuidProvider);

  @override
  call(Store<BuiltList<Todo>> store, action, NextDispatcher next) async {
    if (action is DoCreateTodoAction) {
      final todo = Todo((b) => b
        ..id = _uuidProvider.generateUuid()
        ..name = action.name
        ..isComplete = false);

      try {
        await _todoRepository.create(todo);
        store.dispatch(
            SuccessCreateTodoAction((b) => b..todo = todo.toBuilder()));
      } catch (e) {
        // next(TaskCreationErrorAction());
      }
      // _todoRepository.create(action.)
    }
  }
}

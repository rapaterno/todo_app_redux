import 'package:built_collection/built_collection.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/data/provider/uuid_provider.dart';
import 'package:todo_app_redux/data/repository/todo_repository.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';

class TodoMiddleware implements EpicClass<BuiltList<Todo>> {
  final AbstractTodoRepository _todoRepository;
  final AbstractUuidProvider _uuidProvider;

  TodoMiddleware(this._todoRepository, this._uuidProvider);

  @override
  Stream call(Stream actions, EpicStore<BuiltList<Todo>> store) async* {
    await for (final action in actions) {
      if (action is DoCreateTodoAction) {
        final todo = Todo((b) => b
          ..id = _uuidProvider.generateUuid()
          ..name = action.name
          ..isComplete = false);
        try {
          await _todoRepository.create(todo);
          yield SuccessCreateTodoAction(
              (updates) => updates..todo = todo.toBuilder());
        } catch (e) {
          yield ErrorCreateTodoAction(
              (updates) => updates..error = e.toString());
        }
      } else if (action is DoReadTodoAction) {
        try {
          final todos = await _todoRepository.read();
          yield SuccessReadTodoAction(
              (updates) => updates..todos = todos.build().toBuilder());
        } catch (e) {
          //TODO: Add ErrorAction
        }
      } else if (action is DoUpdateTodoAction) {
        try {
          await _todoRepository.update(action.updatedTodo);
          yield SuccessUpdateTodoAction((updates) =>
              updates..updatedTodo = action.updatedTodo.toBuilder());
        } catch (e) {
          //TODO: Add ErrorAction
        }
      } else if (action is DoDeleteTodoAction) {
        try {
          await _todoRepository.delete(action.deletedTodo);
          yield SuccessDeleteTodoAction((updates) =>
              updates..deletedTodo = action.deletedTodo.toBuilder());
        } catch (e) {
          //TODO: Add ErrorAction
        }
      }
    }
  }
}

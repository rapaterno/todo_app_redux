import 'package:todo_app_redux/data/dao/task_dao.dart';
import 'package:todo_app_redux/data/model/todo.dart';

abstract class AbstractTodoRepository {
  Future<void> create(Todo todo);
  Future<List<Todo>> read();
  Future<void> update(Todo todo);
  Future<void> delete(Todo todo);
}

class TodoRepository implements AbstractTodoRepository {
  final AbstractTodoDao todoDao = TodoDao();
  @override
  Future<void> create(Todo todo) => todoDao.createTodo(todo);

  @override
  Future<List<Todo>> read() => todoDao.selectAllTodos();

  @override
  Future<void> update(Todo todo) => todoDao.updateTodo(todo);

  @override
  Future<void> delete(Todo todo) => todoDao.deleteTodo(todo);
}

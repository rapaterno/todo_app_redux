import 'package:todo_app_redux/data/model/todo.dart';

abstract class AbstractTodoRepository {
  Future<void> create(Todo todo);
  Future<List<Todo>> read();
  Future<void> update(Todo todo);
  Future<void> delete(Todo todo);
}

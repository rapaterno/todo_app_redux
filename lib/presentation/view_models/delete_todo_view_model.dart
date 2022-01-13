import 'package:todo_app_redux/data/model/todo.dart';

class DeleteTodoViewModel {
  final Function(Todo) onTodoDelete;

  DeleteTodoViewModel({required this.onTodoDelete});
}

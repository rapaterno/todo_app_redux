import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';

class EditTodoViewModel {
  final Function(Todo) onTodoDelete;
  final Function(Todo) onTodoUpdate;
  final Map<String, Status> statuses;

  EditTodoViewModel(
      {required this.onTodoDelete,
      required this.onTodoUpdate,
      required this.statuses});
}

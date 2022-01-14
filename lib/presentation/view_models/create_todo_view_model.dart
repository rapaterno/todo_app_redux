import 'package:todo_app_redux/data/enum/status.dart';

class CreateTodoViewModel {
  final Function(String) onTodoCreate;
  final Status status;

  CreateTodoViewModel({required this.onTodoCreate, required this.status});
}

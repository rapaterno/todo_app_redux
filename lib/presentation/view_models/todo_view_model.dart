import 'package:built_collection/built_collection.dart';
import 'package:todo_app_redux/data/model/todo.dart';

class TodoViewModel {
  final BuiltList<Todo> todos;
  final Function(Todo) onCheckboxTapped;
  final Function(Todo, String) onTodoEdited;

  TodoViewModel(
      {required this.onTodoEdited,
      required this.todos,
      required this.onCheckboxTapped});
}

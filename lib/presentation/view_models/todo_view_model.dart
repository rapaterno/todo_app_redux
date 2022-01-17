import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
part 'todo_view_model.g.dart';

abstract class TodoViewModel
    implements Built<TodoViewModel, TodoViewModelBuilder> {
  // Fields
  BuiltList<Todo> get todos;
  Function(Todo) get onCheckboxTapped;
  Function(Todo, String) get onTodoEdited;
  Status get status;

  TodoViewModel._();

  factory TodoViewModel([void Function(TodoViewModelBuilder) updates]) =
      _$TodoViewModel;
}

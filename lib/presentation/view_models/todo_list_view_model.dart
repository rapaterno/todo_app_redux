import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';

part 'todo_list_view_model.g.dart';

abstract class TodoListViewModel
    implements Built<TodoListViewModel, TodoListViewModelBuilder> {
  // Fields
  Status get status;

  TodoListViewModel._();

  factory TodoListViewModel([void Function(TodoListViewModelBuilder) updates]) =
      _$TodoListViewModel;
}

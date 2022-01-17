import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'edit_todo_view_model.g.dart';

abstract class EditTodoViewModel
    implements Built<EditTodoViewModel, EditTodoViewModelBuilder> {
  Function(Todo) get onTodoDelete;
  Function(Todo) get onTodoUpdate;
  Map<String, Status> get statuses;
  EditTodoViewModel._();

  factory EditTodoViewModel([void Function(EditTodoViewModelBuilder) updates]) =
      _$EditTodoViewModel;
}

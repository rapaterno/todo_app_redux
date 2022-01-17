import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';

part 'create_todo_view_model.g.dart';

abstract class CreateTodoViewModel
    implements Built<CreateTodoViewModel, CreateTodoViewModelBuilder> {
  Function(String) get onTodoCreate;
  Status get status;
  CreateTodoViewModel._();

  factory CreateTodoViewModel(
          [void Function(CreateTodoViewModelBuilder) updates]) =
      _$CreateTodoViewModel;
}

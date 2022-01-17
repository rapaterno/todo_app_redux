import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';

part 'todo_tile_view_model.g.dart';

abstract class TodoTileViewModel
    implements Built<TodoTileViewModel, TodoTileViewModelBuilder> {
  // Fields
  Status get status;
  TodoTileViewModel._();

  factory TodoTileViewModel([void Function(TodoTileViewModelBuilder) updates]) =
      _$TodoTileViewModel;
}

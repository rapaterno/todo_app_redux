import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  BuiltList<Todo> get todosState;
  BuiltMap<String, Status> get statuses;
  AppState._();

  factory AppState.initial() {
    return AppState(
        (builder) => builder..todosState = <Todo>[].build().toBuilder());
  }
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}

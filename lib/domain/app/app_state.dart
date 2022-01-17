import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/todo/todo_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  TodoState get todosState;
  BuiltMap<String, Status> get statuses;
  AppState._();

  factory AppState.initial() {
    return AppState((builder) => builder
      ..todosState = TodoState.initial().toBuilder()
      ..statuses = <String, Status>{}.build().toBuilder());
  }
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}

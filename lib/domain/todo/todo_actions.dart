import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'todo_actions.g.dart';

abstract class DoCreateTodoAction
    implements Built<DoCreateTodoAction, DoCreateTodoActionBuilder> {
  String get name;
  bool get isComplete;
  DoCreateTodoAction._();

  factory DoCreateTodoAction(
          [void Function(DoCreateTodoActionBuilder) updates]) =
      _$DoCreateTodoAction;
}

abstract class SuccessCreateTodoAction
    implements Built<SuccessCreateTodoAction, SuccessCreateTodoActionBuilder> {
  // Fields
  Todo get todo;

  SuccessCreateTodoAction._();

  factory SuccessCreateTodoAction(
          [void Function(SuccessCreateTodoActionBuilder) updates]) =
      _$SuccessCreateTodoAction;
}

abstract class ErrorCreateTodoAction
    implements Built<ErrorCreateTodoAction, ErrorCreateTodoActionBuilder> {
  String get error;

  ErrorCreateTodoAction._();

  factory ErrorCreateTodoAction(
          [void Function(ErrorCreateTodoActionBuilder) updates]) =
      _$ErrorCreateTodoAction;
}

abstract class DoReadTodoAction
    implements Built<DoReadTodoAction, DoReadTodoActionBuilder> {
  DoReadTodoAction._();

  factory DoReadTodoAction([void Function(DoReadTodoActionBuilder) updates]) =
      _$DoReadTodoAction;
}

abstract class SuccessReadTodoAction
    implements Built<SuccessReadTodoAction, SuccessReadTodoActionBuilder> {
  // Fields
  BuiltList<Todo> get todos;
  SuccessReadTodoAction._();

  factory SuccessReadTodoAction(
          [void Function(SuccessReadTodoActionBuilder) updates]) =
      _$SuccessReadTodoAction;
}

abstract class DoUpdateTodoAction
    implements Built<DoUpdateTodoAction, DoUpdateTodoActionBuilder> {
  // Fields
  Todo get updatedTodo;
  DoUpdateTodoAction._();

  factory DoUpdateTodoAction(
          [void Function(DoUpdateTodoActionBuilder) updates]) =
      _$DoUpdateTodoAction;
}

abstract class SuccessUpdateTodoAction
    implements Built<SuccessUpdateTodoAction, SuccessUpdateTodoActionBuilder> {
  Todo get updatedTodo;

  SuccessUpdateTodoAction._();

  factory SuccessUpdateTodoAction(
          [void Function(SuccessUpdateTodoActionBuilder) updates]) =
      _$SuccessUpdateTodoAction;
}

abstract class DoDeleteTodoAction
    implements Built<DoDeleteTodoAction, DoDeleteTodoActionBuilder> {
  // Fields
  Todo get deletedTodo;

  DoDeleteTodoAction._();

  factory DoDeleteTodoAction(
          [void Function(DoDeleteTodoActionBuilder) updates]) =
      _$DoDeleteTodoAction;
}

abstract class SuccessDeleteTodoAction
    implements Built<SuccessDeleteTodoAction, SuccessDeleteTodoActionBuilder> {
  // Fields
  Todo get deletedTodo;

  SuccessDeleteTodoAction._();

  factory SuccessDeleteTodoAction(
          [void Function(SuccessDeleteTodoActionBuilder) updates]) =
      _$SuccessDeleteTodoAction;
}

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'todo_actions.g.dart';

abstract class DoCreateMiddlewareTodoAction
    implements
        Built<DoCreateMiddlewareTodoAction,
            DoCreateMiddlewareTodoActionBuilder> {
  String get name;
  bool get isComplete;
  DoCreateMiddlewareTodoAction._();

  factory DoCreateMiddlewareTodoAction(
          [void Function(DoCreateMiddlewareTodoActionBuilder) updates]) =
      _$DoCreateMiddlewareTodoAction;
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

abstract class DoReadTodoMiddlewareAction
    implements
        Built<DoReadTodoMiddlewareAction, DoReadTodoMiddlewareActionBuilder> {
  DoReadTodoMiddlewareAction._();

  factory DoReadTodoMiddlewareAction(
          [void Function(DoReadTodoMiddlewareActionBuilder) updates]) =
      _$DoReadTodoMiddlewareAction;
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

abstract class DoUpdateTodoMiddlewareAction
    implements
        Built<DoUpdateTodoMiddlewareAction,
            DoUpdateTodoMiddlewareActionBuilder> {
  // Fields
  Todo get updatedTodo;
  DoUpdateTodoMiddlewareAction._();

  factory DoUpdateTodoMiddlewareAction(
          [void Function(DoUpdateTodoMiddlewareActionBuilder) updates]) =
      _$DoUpdateTodoMiddlewareAction;
}

abstract class SuccessUpdateTodoAction
    implements Built<SuccessUpdateTodoAction, SuccessUpdateTodoActionBuilder> {
  Todo get updatedTodo;

  SuccessUpdateTodoAction._();

  factory SuccessUpdateTodoAction(
          [void Function(SuccessUpdateTodoActionBuilder) updates]) =
      _$SuccessUpdateTodoAction;
}

abstract class DoDeleteTodoMiddlewareAction
    implements
        Built<DoDeleteTodoMiddlewareAction,
            DoDeleteTodoMiddlewareActionBuilder> {
  // Fields
  Todo get deletedTodo;

  DoDeleteTodoMiddlewareAction._();

  factory DoDeleteTodoMiddlewareAction(
          [void Function(DoDeleteTodoMiddlewareActionBuilder) updates]) =
      _$DoDeleteTodoMiddlewareAction;
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

abstract class SetDeleteStatus
    implements Built<SetDeleteStatus, SetDeleteStatusBuilder> {
  // Fields
  Status get status;
  SetDeleteStatus._();

  factory SetDeleteStatus([void Function(SetDeleteStatusBuilder) updates]) =
      _$SetDeleteStatus;
}

abstract class SetUpdateStatus
    implements Built<SetUpdateStatus, SetUpdateStatusBuilder> {
  // Fields
  Status get status;
  int get id;

  SetUpdateStatus._();

  factory SetUpdateStatus([void Function(SetUpdateStatusBuilder) updates]) =
      _$SetUpdateStatus;
}

abstract class SetReadTodosStatus
    implements Built<SetReadTodosStatus, SetReadTodosStatusBuilder> {
  // Fields
  Status get status;

  SetReadTodosStatus._();

  factory SetReadTodosStatus(
          [void Function(SetReadTodosStatusBuilder) updates]) =
      _$SetReadTodosStatus;
}

abstract class SetSaveStatus
    implements Built<SetSaveStatus, SetSaveStatusBuilder> {
  // Fields

  Status get status;
  SetSaveStatus._();

  factory SetSaveStatus([void Function(SetSaveStatusBuilder) updates]) =
      _$SetSaveStatus;
}

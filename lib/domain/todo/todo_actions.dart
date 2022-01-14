import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'todo_actions.g.dart';

abstract class TodoAction {}

abstract class DoCreateMiddlewareTodoAction
    implements
        Built<DoCreateMiddlewareTodoAction,
            DoCreateMiddlewareTodoActionBuilder>,
        TodoAction {
  static String createStatusKey() {
    return 'DoCreateMiddlewareTodoAction';
  }

  String get statusKey;
  String get name;
  bool get isComplete;
  DoCreateMiddlewareTodoAction._();

  factory DoCreateMiddlewareTodoAction(
          [void Function(DoCreateMiddlewareTodoActionBuilder) updates]) =
      _$DoCreateMiddlewareTodoAction;
}

abstract class SuccessCreateTodoAction
    implements
        Built<SuccessCreateTodoAction, SuccessCreateTodoActionBuilder>,
        TodoAction {
  Todo get todo;

  SuccessCreateTodoAction._();

  factory SuccessCreateTodoAction(
          [void Function(SuccessCreateTodoActionBuilder) updates]) =
      _$SuccessCreateTodoAction;
}

abstract class ErrorCreateTodoAction
    implements
        Built<ErrorCreateTodoAction, ErrorCreateTodoActionBuilder>,
        TodoAction {
  String get error;

  ErrorCreateTodoAction._();

  factory ErrorCreateTodoAction(
          [void Function(ErrorCreateTodoActionBuilder) updates]) =
      _$ErrorCreateTodoAction;
}

abstract class DoReadTodoMiddlewareAction
    implements
        Built<DoReadTodoMiddlewareAction, DoReadTodoMiddlewareActionBuilder>,
        TodoAction {
  DoReadTodoMiddlewareAction._();
  static String createStatusKey() {
    return 'DoReadTodoMiddlewareAction';
  }

  String get statusKey;
  factory DoReadTodoMiddlewareAction(
          [void Function(DoReadTodoMiddlewareActionBuilder) updates]) =
      _$DoReadTodoMiddlewareAction;
}

abstract class SuccessReadTodoAction
    implements
        Built<SuccessReadTodoAction, SuccessReadTodoActionBuilder>,
        TodoAction {
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
            DoUpdateTodoMiddlewareActionBuilder>,
        TodoAction {
  static String createStatusKey(Todo todo) {
    return 'DoUpdateTodoMiddlewareAction' + todo.id.toString();
  }

  String get statusKey;
  Todo get updatedTodo;
  DoUpdateTodoMiddlewareAction._();

  factory DoUpdateTodoMiddlewareAction(
          [void Function(DoUpdateTodoMiddlewareActionBuilder) updates]) =
      _$DoUpdateTodoMiddlewareAction;
}

abstract class SuccessUpdateTodoAction
    implements
        Built<SuccessUpdateTodoAction, SuccessUpdateTodoActionBuilder>,
        TodoAction {
  Todo get updatedTodo;

  SuccessUpdateTodoAction._();

  factory SuccessUpdateTodoAction(
          [void Function(SuccessUpdateTodoActionBuilder) updates]) =
      _$SuccessUpdateTodoAction;
}

abstract class DoDeleteTodoMiddlewareAction
    implements
        Built<DoDeleteTodoMiddlewareAction,
            DoDeleteTodoMiddlewareActionBuilder>,
        TodoAction {
  static String createStatusKey() {
    return 'DoDeleteTodoMiddlewareAction';
  }

  String get statusKey;
  Todo get deletedTodo;

  DoDeleteTodoMiddlewareAction._();

  factory DoDeleteTodoMiddlewareAction(
          [void Function(DoDeleteTodoMiddlewareActionBuilder) updates]) =
      _$DoDeleteTodoMiddlewareAction;
}

abstract class SuccessDeleteTodoAction
    implements
        Built<SuccessDeleteTodoAction, SuccessDeleteTodoActionBuilder>,
        TodoAction {
  // Fields
  Todo get deletedTodo;

  SuccessDeleteTodoAction._();

  factory SuccessDeleteTodoAction(
          [void Function(SuccessDeleteTodoActionBuilder) updates]) =
      _$SuccessDeleteTodoAction;
}

abstract class SetTodoStatusAction
    implements
        Built<SetTodoStatusAction, SetTodoStatusActionBuilder>,
        TodoAction {
  // Fields
  Status get status;
  String get statusKey;
  SetTodoStatusAction._();

  factory SetTodoStatusAction(
          [void Function(SetTodoStatusActionBuilder) updates]) =
      _$SetTodoStatusAction;
}

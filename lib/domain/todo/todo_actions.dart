import 'package:built_value/built_value.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'todo_actions.g.dart';

abstract class SuccessCreateTodoAction
    implements Built<SuccessCreateTodoAction, SuccessCreateTodoActionBuilder> {
  // Fields
  Todo get todo;

  SuccessCreateTodoAction._();

  factory SuccessCreateTodoAction(
          [void Function(SuccessCreateTodoActionBuilder) updates]) =
      _$SuccessCreateTodoAction;
}

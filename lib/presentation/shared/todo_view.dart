import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_state.dart';
import 'package:todo_app_redux/presentation/shared/dialogs/edit_todo_dialog.dart';
import 'package:todo_app_redux/presentation/shared/todo_list/todo_list.dart';
import 'package:todo_app_redux/presentation/view_models/todo_view_model.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key, this.isComplete}) : super(key: key);
  final bool? isComplete;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(DoReadTodoMiddlewareAction((updates) =>
          updates..statusKey = DoReadTodoMiddlewareAction.createStatusKey())),
      converter: (store) => TodoViewModel((builder) => builder
        ..status = store
                .state.statuses[DoReadTodoMiddlewareAction.createStatusKey()] ??
            Status.idle
        ..todos = _getTodos(store.state.todosState, isComplete).toBuilder()
        ..onCheckboxTapped = (todo) {
          final updatedTodo =
              todo.rebuild((updates) => updates..isComplete = !todo.isComplete);
          store.dispatch(DoUpdateTodoMiddlewareAction((updates) => updates
            ..updatedTodo = updatedTodo.toBuilder()
            ..statusKey = DoUpdateTodoMiddlewareAction.createStatusKey(todo)));
        }
        ..onTodoEdited = (todo, name) {
          final updatedTodo = todo.rebuild((updates) => updates..name = name);
          store.dispatch(DoUpdateTodoMiddlewareAction((updates) => updates
            ..updatedTodo = updatedTodo.toBuilder()
            ..statusKey = DoUpdateTodoMiddlewareAction.createStatusKey(todo)));
        }),
      builder: (context, viewModel) {
        final onTileTapped = (Todo todo) async {
          String? newName = await showDialog(
              context: context,
              builder: (context) {
                return EditTodoDialog(
                  todo: todo,
                );
              });

          if (newName != null) {
            viewModel.onTodoEdited(todo, newName);
          }
        };

        return Center(
          child: TodoList(viewModel.todos.asList(), viewModel.onCheckboxTapped,
              onTileTapped),
        );
      },
    );
  }

  BuiltList<Todo> _getTodos(TodoState todoState, bool? isComplete) {
    final List<Todo> todos = [];
    if (isComplete == null) {
      todoState.todos.forEach((key, value) {
        todos.add(value);
      });
    } else if (isComplete) {
      todoState.completeIds.forEach((value) {
        final completeTodo = todoState.todos[value];
        if (completeTodo != null) {
          todos.add(completeTodo);
        }
      });
    } else {
      todoState.incompleteIds.forEach((value) {
        final incompleteTodo = todoState.todos[value];
        if (incompleteTodo != null) {
          todos.add(incompleteTodo);
        }
      });
    }
    return todos.build();
  }
}

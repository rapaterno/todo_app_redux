import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/presentation/view_models/todo_list_view_model.dart';

import 'todo_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList(this.todos, this.onCheckboxTapped, this.onTileTapped);

  final List<Todo> todos;
  final Function(Todo) onCheckboxTapped;
  final Function(Todo) onTileTapped;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoListViewModel>(
        distinct: true,
        converter: (store) => TodoListViewModel(
              (builder) => builder
                ..status = store.state.statuses[
                        DoReadTodoMiddlewareAction.createStatusKey()] ??
                    Status.idle,
            ),
        builder: (context, viewModel) {
          if (viewModel.status == Status.loading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  Todo todo = todos[index];
                  return TodoTile(todo, onCheckboxTapped, onTileTapped);
                });
          }
        });
  }
}

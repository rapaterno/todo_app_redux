import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/presentation/view_models/todo_tile_view_model.dart';
import 'package:todo_app_redux/shared/keys.dart';

class TodoTile extends StatelessWidget {
  const TodoTile(this.todo, this.onCheckboxTapped, this.onTileTapped);

  final Todo todo;
  final Function(Todo) onCheckboxTapped;
  final Function(Todo) onTileTapped;

  Key get checkboxKey => Key(SharedKeys.checkboxButton(todo.id));
  Key get tileKey => Key(SharedKeys.todoTile(todo.id));

  ///Returns a checked checkbox icon if [task.isComplete] is true, unchecked if false
  Widget _buildLeading() {
    return StoreConnector<AppState, TodoTileViewModel>(
        distinct: true,
        builder: (context, viewModel) {
          return GestureDetector(
            key: checkboxKey,
            onTap: viewModel.status == Status.loading
                ? null
                : () => onCheckboxTapped(todo),
            child: viewModel.status == Status.loading
                ? CircularProgressIndicator()
                : Icon(todo.isComplete
                    ? Icons.check_box
                    : Icons.check_box_outline_blank),
          );
        },
        converter: (store) => TodoTileViewModel((builder) => builder
          ..status = store.state.statuses[
                  DoUpdateTodoMiddlewareAction.createStatusKey(todo)] ??
              Status.idle));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: tileKey,
      title: Text(todo.name),
      leading: _buildLeading(),
      onTap: () async => onTileTapped(todo),
    );
  }
}

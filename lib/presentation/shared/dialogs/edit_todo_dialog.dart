import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/presentation/view_models/edit_todo_view_model.dart';
import 'package:todo_app_redux/shared/keys.dart';
import 'dialog_wrapper.dart';

const errorText = 'There has been an error. Try again';

class EditTodoDialog extends StatelessWidget {
  const EditTodoDialog({Key? key, required this.todo}) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return DialogWrapper(title: "Edit Todo", child: _buildChild(context));
  }

  Widget _buildChild(BuildContext context) {
    TextEditingController _textController =
        TextEditingController.fromValue(TextEditingValue(text: todo.name));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          key: Key(SharedKeys.todoTextField),
          autofocus: true,
          controller: _textController,
        ),
        SizedBox(
          height: 20,
        ),
        StoreConnector<AppState, EditTodoViewModel>(
            distinct: true,
            builder: (context, viewModel) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      key: Key(SharedKeys.deleteButton),
                      onPressed: () {
                        viewModel.onTodoDelete(todo);
                        Navigator.pop(context);
                      },
                      child: Text('Delete')),
                  ElevatedButton(
                      key: Key(SharedKeys.saveButton),
                      onPressed: () {
                        Navigator.pop(context, _textController.text);
                      },
                      child: Text('Save'))
                ],
              );
            },
            converter: (store) => EditTodoViewModel((builder) => builder
              ..statuses = {
                DoUpdateTodoMiddlewareAction.createStatusKey(todo): store
                            .state.statuses[
                        DoUpdateTodoMiddlewareAction.createStatusKey(todo)] ??
                    Status.idle,
                DoDeleteTodoMiddlewareAction.createStatusKey():
                    store.state.statuses[
                            DoDeleteTodoMiddlewareAction.createStatusKey()] ??
                        Status.idle
              }
              ..onTodoDelete = (deleteTodo) {
                store.dispatch(DoDeleteTodoMiddlewareAction((builder) => builder
                  ..deletedTodo = deleteTodo.toBuilder()
                  ..statusKey =
                      DoDeleteTodoMiddlewareAction.createStatusKey()));
              }
              ..onTodoUpdate = (updateTodo) {
                store.dispatch(DoUpdateTodoMiddlewareAction((builder) => builder
                  ..updatedTodo = updateTodo.toBuilder()
                  ..statusKey = DoUpdateTodoMiddlewareAction.createStatusKey(
                      updateTodo)));
              }))
      ],
    );
  }
}

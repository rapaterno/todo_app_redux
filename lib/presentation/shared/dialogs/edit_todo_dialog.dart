import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/presentation/view_models/delete_todo_view_model.dart';
import 'dialog_wrapper.dart';

const saveButtonKey = 'saveButtonKey';
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
          autofocus: true,
          controller: _textController,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StoreConnector<AppState, DeleteTodoViewModel>(
                builder: (context, viewModel) {
                  return ElevatedButton(
                      onPressed: () {
                        viewModel.onTodoDelete(todo);
                        Navigator.pop(context);
                      },
                      child: Text('Delete'));
                },
                converter: (store) => DeleteTodoViewModel(
                    onTodoDelete: (deleteTodo) => store.dispatch(
                        DoDeleteTodoAction((builder) =>
                            builder..deletedTodo = deleteTodo.toBuilder())))),
            ElevatedButton(
                key: Key(saveButtonKey),
                onPressed: () {
                  Navigator.pop(context, _textController.text);
                },
                child: Text('Save'))
          ],
        )
      ],
    );
  }
}

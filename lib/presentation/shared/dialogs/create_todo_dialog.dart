import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/presentation/view_models/create_todo_view_model.dart';
import 'dialog_wrapper.dart';

const saveButtonKey = 'saveButtonKey';
const errorText = 'There has been an error. Try again';

class CreateTodoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DialogWrapper(title: "Create Todo", child: _buildChild(context));
  }

  Widget _buildChild(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    ;
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
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close')),
            StoreConnector<AppState, CreateTodoViewModel>(
                distinct: true,
                builder: (context, viewModel) {
                  Widget child;

                  final status = viewModel.status;
                  if (status == Status.loading) {
                    child = CircularProgressIndicator();
                  } else {
                    child = Text('Save');
                  }
                  return ElevatedButton(
                      key: Key(saveButtonKey),
                      onPressed: () {
                        viewModel.onTodoCreate(_textController.text);
                        Navigator.pop(context);
                      },
                      child: child);
                },
                converter: (store) => CreateTodoViewModel(
                      status: store.state.statuses[
                              DoCreateMiddlewareTodoAction.createStatusKey()] ??
                          Status.idle,
                      onTodoCreate: (String name) => store.dispatch(
                          DoCreateMiddlewareTodoAction((builder) => builder
                            ..statusKey =
                                DoCreateMiddlewareTodoAction.createStatusKey()
                            ..isComplete = false
                            ..name = name)),
                    ))
          ],
        )
      ],
    );
  }
}

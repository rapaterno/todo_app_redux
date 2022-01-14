import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/presentation/shared/todo_bottom_nav_bar.dart';
import 'package:todo_app_redux/presentation/view_models/page_wrapper_view_model.dart';

import 'dialogs/create_todo_dialog.dart';

class PageWrapper extends StatelessWidget {
  const PageWrapper(
      {required this.body, required this.title, required this.currentIndex});
  final Widget body;
  final String title;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: _buildAddTask(context),
      ),
      body: body,
      bottomNavigationBar: TodoBottomNavBar(
        currentIndex: currentIndex,
      ),
    );
  }

  List<Widget> _buildAddTask(BuildContext context) {
    return [
      StoreConnector<AppState, PageWrapperViewModel>(
          converter: (store) => PageWrapperViewModel(
                onTodoCreated: (name) {
                  store.dispatch(
                      DoCreateMiddlewareTodoAction((builder) => builder
                        ..isComplete = false
                        ..name = name));
                },
              ),
          builder: (context, viewModel) {
            return IconButton(
                onPressed: () async {
                  String? newName = await showDialog(
                      context: context,
                      builder: (context) {
                        return CreateTodoDialog();
                      });

                  if (newName != null) {
                    viewModel.onTodoCreated(newName);
                  }
                },
                icon: Icon(Icons.add));
          })
    ];
  }
}

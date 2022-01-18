import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/shared/todo_bottom_nav_bar.dart';
import 'package:todo_app_redux/shared/keys.dart';

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
      IconButton(
          key: Key(SharedKeys.addButton),
          onPressed: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return CreateTodoDialog(
                    key: Key(SharedKeys.createDialog),
                  );
                });
          },
          icon: Icon(Icons.add))
    ];
  }
}

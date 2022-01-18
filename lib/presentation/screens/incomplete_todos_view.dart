import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/shared/page_wrapper.dart';
import 'package:todo_app_redux/presentation/shared/todo_view.dart';
import 'package:todo_app_redux/shared/keys.dart';

class IncompleteTodoView extends StatelessWidget {
  const IncompleteTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
        body: TodoView(
          key: Key(SharedKeys.incompleteTodoScreen),
          isComplete: false,
        ),
        title: 'Incomplete Todos',
        currentIndex: 2);
  }
}

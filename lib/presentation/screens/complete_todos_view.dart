import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/shared/page_wrapper.dart';
import 'package:todo_app_redux/presentation/shared/todo_view.dart';

class CompleteTodoView extends StatelessWidget {
  const CompleteTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
        body: TodoView(
          isComplete: true,
        ),
        title: 'Complete Todos',
        currentIndex: 1);
  }
}

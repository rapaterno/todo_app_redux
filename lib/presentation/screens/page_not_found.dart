import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/shared/page_wrapper.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView();

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
        body: Center(
          child: Text('Page Not Found'),
        ),
        title: "Error",
        currentIndex: 0);
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/screens/all_todos_view.dart';
import 'package:todo_app_redux/presentation/screens/complete_todos_view.dart';
import 'package:todo_app_redux/presentation/screens/incomplete_todos_view.dart';
import 'package:todo_app_redux/presentation/screens/page_not_found.dart';

import 'routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.allTasks:
        return createRoute(AllTodosView());

      case Routes.completeTasks:
        return createRoute(CompleteTodoView());

      case Routes.incompleteTasks:
        return createRoute(IncompleteTodoView());

      default:
        return MaterialPageRoute(builder: (_) => PageNotFoundView());
    }
  }
}

PageRouteBuilder createRoute(Widget view) {
  //Using PageRouteBuilder instead of MaterialPageRoute
  //so the animation isn't jarring
  return PageRouteBuilder(
    pageBuilder: (context, _, __) => view,
    transitionDuration: Duration.zero,
  );
}

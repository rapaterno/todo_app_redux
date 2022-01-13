import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/presentation/shared/todo_list/todo_list.dart';

import '../mock_todos.dart';

void main() {
  group('TodoList', () {
    testWidgets('should show todo tiles', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: TodoList(mockTodos, (Todo todo) {}, (Todo todo) {}),
        ),
      ));

      await tester.pumpAndSettle();

      mockTodos.forEach((todo) {
        expect(find.text(todo.name), findsOneWidget);
      });
    });
  });
}

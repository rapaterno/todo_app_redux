import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/presentation/shared/todo_list/todo_tile.dart';

import '../mock_todos.dart';

void main() {
  testWidgets('Todo Tile', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Container(
            child: TodoTile(mockTodos[0], (Todo todo) {}, (Todo todo) {})),
      ),
    ));

    expect(find.text(mockTodos[0].name), findsOneWidget);
    expect(find.byIcon(Icons.check_box_outline_blank), findsOneWidget);
  });
}

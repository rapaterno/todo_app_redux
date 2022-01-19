import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:todo_app_redux/main.dart' as app;
import 'package:todo_app_redux/shared/keys.dart';

import 'screen_test.dart/create_todo_screen.dart';
import 'screen_test.dart/edit_todo_screen.dart';
import 'screen_test.dart/todo_screen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    String integrationTodoText =
        "${DateTime.now().millisecond.toString()} - test";
    testWidgets('create new todo', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final todoScreen = TodoScreen(tester);
      await todoScreen.tapAddButton();

      final createTodoScreen = CreateTodoScreen(tester);
      await createTodoScreen.enterName(integrationTodoText);
      await createTodoScreen.tapSaveButton();

      expect(find.text(integrationTodoText), findsOneWidget);
    });

    testWidgets('view incomplete todos', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final todoScreen = TodoScreen(tester);
      await todoScreen.tapIncompleteNavBarItem();

      final todoId = app.getFirstTodoWithName(integrationTodoText);
      todoScreen.expectTile(todoId, integrationTodoText);
    });
    testWidgets('update todo status', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final todoId = app.getFirstTodoWithName(integrationTodoText);

      final todoScreen = TodoScreen(tester);
      await todoScreen.tapCheckbox(todoId, integrationTodoText);

      todoScreen.expectCheckboxWithStatus(todoId, integrationTodoText, true);
    });
    testWidgets('view complete todos', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final todoScreen = TodoScreen(tester);
      await todoScreen.tapCompleteNavBarItem();

      final todoId = app.getFirstTodoWithName(integrationTodoText);
      todoScreen.expectTile(todoId, integrationTodoText);
    });
    testWidgets('edit todo name', (WidgetTester tester) async {
      final editedIntegrationText = "$integrationTodoText edited";
      app.main();
      await tester.pumpAndSettle();

      String todoName = integrationTodoText;
      final todoId = app.getFirstTodoWithName(todoName);

      final todoScreen = TodoScreen(tester);
      final editTodoScreen = EditTodoScreen(tester);

      await todoScreen.tapTodoTile(todoId, todoName);

      await editTodoScreen.enterName(editedIntegrationText);
      await editTodoScreen.tapSaveButton();

      //For succedding tests to that integrationTodoTest to find id;
      integrationTodoText = editedIntegrationText;
      todoName = integrationTodoText;

      todoScreen.expectTile(todoId, todoName);
    });

    testWidgets('delete todo', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();
      final todoId = app.getFirstTodoWithName(integrationTodoText);
      String todoName = integrationTodoText;

      final todoScreen = TodoScreen(tester);
      final editTodoScreen = EditTodoScreen(tester);

      await todoScreen.tapTodoTile(todoId, todoName);
      await editTodoScreen.tapDeleteButton();

      todoScreen.expectMissingTile(todoId, todoName);
    });
  });
}

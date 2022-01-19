import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:todo_app_redux/main.dart' as app;
import 'package:todo_app_redux/presentation/shared/todo_list/todo_tile.dart';
import 'package:todo_app_redux/shared/keys.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    String integrationTodoText =
        "${DateTime.now().millisecond.toString()} - test";
    testWidgets('create new todo', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final addTodoFinder = find.byKey(Key(SharedKeys.addButton));

      await tester.tap(addTodoFinder);

      await tester.pumpAndSettle();

      final createTextfieldFinder = find.byKey(Key(SharedKeys.todoTextField));

      expect(createTextfieldFinder, findsOneWidget);
      await tester.enterText(createTextfieldFinder, integrationTodoText);

      final saveButtonFinder = find.byKey(Key(SharedKeys.saveButton));
      await tester.tap(saveButtonFinder);

      await tester.pumpAndSettle();

      expect(find.text(integrationTodoText), findsOneWidget);
    });

    testWidgets('view incomplete todos', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key(SharedKeys.incompleteNavBarItem)));

      await tester.pumpAndSettle();

      expect(find.text(integrationTodoText), findsOneWidget);
    });
    testWidgets('update todo status', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final todoId = app.getFirstTodoWithName(integrationTodoText);
      final checkboxFinder = find.byKey(Key(SharedKeys.checkboxButton(todoId)));
      final incompleteCheckboxIconFinder =
          find.byKey(Key(SharedKeys.checkboxIcon(todoId, false)));
      expect(incompleteCheckboxIconFinder, findsOneWidget);
      await tester.tap(checkboxFinder);

      await tester.pumpAndSettle();

      final completeCheckboxIconFinder =
          find.byKey(Key(SharedKeys.checkboxIcon(todoId, true)));
      expect(completeCheckboxIconFinder, findsOneWidget);
    });
    testWidgets('edit todo name', (WidgetTester tester) async {
      final editedIntegrationText = "$integrationTodoText edited";
      app.main();
      await tester.pumpAndSettle();

      final todoId = app.getFirstTodoWithName(integrationTodoText);
      String todoName = integrationTodoText;
      final todoTileFinder =
          find.byKey(Key(SharedKeys.todoTile(todoId, todoName)));
      await tester.tap(todoTileFinder);

      await tester.pumpAndSettle();

      expect(find.text('Edit Todo'), findsOneWidget);

      final editTextfieldFinder = find.byKey(Key(SharedKeys.todoTextField));

      await tester.enterText(editTextfieldFinder, editedIntegrationText);

      final saveButtonFinder = find.byKey(Key(SharedKeys.saveButton));
      await tester.tap(saveButtonFinder);

      await tester.pumpAndSettle();

      integrationTodoText = editedIntegrationText;
      todoName = integrationTodoText;
      final editedTodoTileFinder =
          find.byKey(Key(SharedKeys.todoTile(todoId, todoName)));
      expect(editedTodoTileFinder, findsOneWidget);
    });

    // testWidgets('view complete todos', (WidgetTester tester) async {
    //   app.main();
    //   await tester.tap(find.bySemanticsLabel('Complete'));
    //   await tester.pumpAndSettle();
    //   expect(find.text(integrationTodoText), findsNothing);
    // });
    // testWidgets('delete todo', (WidgetTester tester) async {
    //   app.main();
    //   expect(find.text(integrationTodoText), findsOneWidget);
    //   await tester.tap(find.bySemanticsLabel('All'));
    //   await tester.pumpAndSettle();
    //   await tester.tap(find.bySemanticsLabel(integrationTodoText));
    //   await tester.pumpAndSettle();
    //   await tester.tap(find.bySemanticsLabel('Delete'));

    //   await tester.pumpAndSettle();

    //   expect(find.text(integrationTodoText), findsNothing);
    // });
  });
}

import 'dart:async';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:todo_app_redux/main.dart' as app;
import 'package:todo_app_redux/presentation/shared/todo_list/todo_tile.dart';
import 'package:todo_app_redux/shared/keys.dart';
import 'package:test/test.dart';

void main() {
  late FlutterDriver driver;

  group('E2E Test', () {
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      await driver.close();
    });

    test('create update and delete todo', () async {});
  });
  // group('end-to-end test', () {
  //   final integrationTodoText = DateTime.now().millisecond.toString();
  //   testWidgets('create new todo', (WidgetTester tester) async {
  //     app.main();

  //     await tester.pumpAndSettle();

  //     final addTodo = find.byIcon(Icons.add);

  //     await tester.tap(addTodo);

  //     await tester.pumpAndSettle();

  //     expect(find.text('Create Todo'), findsOneWidget);

  //     final createTextfield = find.byType(TextField);

  //     expect(createTextfield, findsOneWidget);
  //     await tester.enterText(createTextfield, integrationTodoText);

  //     await tester.tap(find.text('Save'));

  //     await tester.pumpAndSettle();

  //     expect(find.text(integrationTodoText), findsOneWidget);
  //   });

  //   testWidgets('view incomplete todos', (WidgetTester tester) async {
  //     app.main();

  //     await tester.pumpAndSettle();

  //     await tester.tap(find.text('Incomplete'));

  //     await tester.pumpAndSettle();

  //     expect(find.text(integrationTodoText), findsOneWidget);
  //   });
  //   testWidgets('update todo status', (WidgetTester tester) async {
  //     app.main();

  //     await tester.pumpAndSettle();

  //     await tester.tap(find.byIcon(Icons.check_box_outline_blank));

  //     await tester.pumpAndSettle();

  //     expect(tester.firstWidget(find.byType(TodoTile)), findsOneWidget);
  //   });
  //   testWidgets('edit todo name', (WidgetTester tester) async {
  //     final editedIntegrationText = "$integrationTodoText edited";
  //     app.main();
  //     await tester.pumpAndSettle();

  //     await tester.tap(find.text(integrationTodoText));

  //     await tester.pumpAndSettle();

  //     expect(find.text('Edit Todo'), findsOneWidget);

  //     final editTextfield = find.byType(TextField);

  //     await tester.enterText(editTextfield, editedIntegrationText);

  //     await tester.tap(find.text('Save'));

  //     await tester.pumpAndSettle();

  //     expect(find.text(editedIntegrationText), findsOneWidget);
  //   });

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
  // });
}

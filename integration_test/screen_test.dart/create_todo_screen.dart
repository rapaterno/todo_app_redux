import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/shared/keys.dart';

class CreateTodoScreen {
  final WidgetTester tester;

  CreateTodoScreen(this.tester);

  final _saveButtonFinder = find.byKey(Key(SharedKeys.saveButton));
  final _nameTextFieldFinder = find.byKey(Key(SharedKeys.todoTextField));
  final _createTodoDialogFinder = find.byKey(Key(SharedKeys.createDialog));

  Future<void> wait() async {
    await tester.pumpAndSettle();
    expect(_createTodoDialogFinder, findsOneWidget);
  }

  Future<void> enterName(String name) async {
    await tester.enterText(_nameTextFieldFinder, name);
    await tester.pumpAndSettle();
  }

  Future<void> tapSaveButton() async {
    await tester.tap(_saveButtonFinder);
    await tester.pumpAndSettle();
  }
}

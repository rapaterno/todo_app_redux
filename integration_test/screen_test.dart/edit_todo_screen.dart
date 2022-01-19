import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/shared/keys.dart';

class EditTodoScreen {
  final WidgetTester tester;

  EditTodoScreen(this.tester);

  final _deleteButtonFinder = find.byKey(Key(SharedKeys.deleteButton));
  final _saveButtonFinder = find.byKey(Key(SharedKeys.saveButton));
  final _nameTextFieldFinder = find.byKey(Key(SharedKeys.todoTextField));

  Future<void> enterName(String name) async {
    await tester.enterText(_nameTextFieldFinder, name);

    await tester.pumpAndSettle();
  }

  Future<void> tapSaveButton() async {
    await tester.tap(_saveButtonFinder);
    await tester.pumpAndSettle();
  }

  Future<void> tapDeleteButton() async {
    await tester.tap(_deleteButtonFinder);
    await tester.pumpAndSettle();
  }
}

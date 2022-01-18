import 'package:flutter_driver/flutter_driver.dart';
import 'package:todo_app_redux/shared/keys.dart';

class EditTodoScreen {
  final FlutterDriver driver;

  EditTodoScreen(this.driver);

  final _deleteButtonFinder = find.byValueKey(SharedKeys.deleteButton);
  final _saveButtonFinder = find.byValueKey(SharedKeys.saveButton);
  final _nameTextFieldFinder = find.byValueKey(SharedKeys.todoTextField);

  Future<void> wait() async {
    await driver.waitFor(find.byValueKey(SharedKeys.editDialog));
  }

  Future<void> enterName(String name) async {
    try {
      await driver.tap(_nameTextFieldFinder);
      await driver.enterText(name);
    } catch (e) {
      print('enterName ${e.toString()}');
    }
  }

  Future<void> tapSaveButton() async {
    await driver.tap(_saveButtonFinder);
  }

  Future<void> tapDeleteButton() async {
    await driver.tap(_deleteButtonFinder);
  }
}

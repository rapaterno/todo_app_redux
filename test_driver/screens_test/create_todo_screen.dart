import 'package:flutter_driver/flutter_driver.dart';
import 'package:todo_app_redux/shared/keys.dart';

class CreateTodoScreen {
  final FlutterDriver driver;

  CreateTodoScreen(this.driver);

  final _saveButtonFinder = find.byValueKey(SharedKeys.saveButton);
  final _nameTextFieldFinder = find.byValueKey(SharedKeys.todoTextField);

  Future<void> wait() async {
    await driver.waitFor(find.byValueKey(SharedKeys.createDialog));
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
}

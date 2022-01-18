import 'package:flutter_driver/flutter_driver.dart';
import 'package:todo_app_redux/shared/keys.dart';

class TodoScreen {
  final FlutterDriver driver;

  TodoScreen(this.driver);

  final _addButtonFinder = find.byValueKey(SharedKeys.addButton);

  Future<void> wait() async {
    await driver.waitFor(find.byValueKey(SharedKeys.todoScreen));
  }

  Future<void> tapAddButton() async {
    await driver.tap(_addButtonFinder);
  }
}

import 'package:todo_app_redux/data/model/todo.dart';

abstract class SharedKeys {
  static String get addButton => 'Add Button';

  static String checkboxButton(String todoId) {
    return '${todoId} Checkbox Button';
  }

  static String get saveButton => 'Save Button';

  static String get deleteButton => 'Delete Button';

  static String get allTabButton => 'All Tab Button';

  static String get completeTabButton => 'Complete Tab Button';

  static String get incompleteTabButton => 'Incomplete Tab Button';

  static String get bottomNavBar => 'Bottom Navigation Bar';
}

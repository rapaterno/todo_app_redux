import 'package:todo_app_redux/data/model/todo.dart';

abstract class SharedKeys {
  static String get addButton => 'Add Button';

  static String checkboxButton(String todoId) {
    return '$todoId Checkbox Button';
  }

  static String todoTile(String todoId) {
    return '$todoId Todo Tile';
  }

  static String get saveButton => 'Save Button';

  static String get deleteButton => 'Delete Button';

  static String get allTabButton => 'All Tab Button';

  static String get todoTextField => 'Todo Text Field';

  static String get todoScreen => 'All Todo Screen';
  static String get incompleteTodoScreen => 'Incomplete Todo Screen';
  static String get completeTodoScreen => 'Complete Todo Screen';

  static String get createDialog => 'Create Dialog';

  static String get editDialog => 'Edit Dialog';

  static String get completeTabButton => 'Complete Tab Button';

  static String get incompleteTabButton => 'Incomplete Tab Button';

  static String get bottomNavBar => 'Bottom Navigation Bar';
}

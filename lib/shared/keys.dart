import 'package:flutter/material.dart';
import 'package:todo_app_redux/data/model/todo.dart';

abstract class SharedKeys {
  static final navKey = GlobalKey<NavigatorState>();
  static String get mainApp => 'Main Todo Redux';
  static String get addButton => 'Add Button';

  static String checkboxButton(String todoId) {
    return '$todoId Checkbox Button';
  }

  static String checkboxIcon(String todoId, bool isComplete) {
    return '$todoId Checkbox Icon $isComplete';
  }

  static String todoTile(String todoId, String todoName) {
    return '$todoId $todoName Todo Tile';
  }

  static String get saveButton => 'Save Button';

  static String get deleteButton => 'Delete Button';

  static String get allNavBarItem => 'All Navigation Bar Item';
  static String get completeNavBarItem => 'Complete Navigation Bar Item';

  static String get incompleteNavBarItem => 'Incomplete Navigation Bar Item';

  static String get todoTextField => 'Todo Text Field';

  static String get todoScreen => 'All Todo Screen';
  static String get incompleteTodoScreen => 'Incomplete Todo Screen';
  static String get completeTodoScreen => 'Complete Todo Screen';

  static String get createDialog => 'Create Dialog';

  static String get editDialog => 'Edit Dialog';

  static String get bottomNavBar => 'Bottom Navigation Bar';
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_redux/shared/keys.dart';

class TodoScreen {
  final WidgetTester tester;
  TodoScreen(this.tester);

  final _addButtonFinder = find.byKey(Key(SharedKeys.addButton));

  final _allNavBarItemFinder = find.byKey(Key(SharedKeys.allNavBarItem));
  final _incompleteNavBarItemFinder =
      find.byKey(Key(SharedKeys.incompleteNavBarItem));
  final _completeNavBarItemFinder =
      find.byKey(Key(SharedKeys.completeNavBarItem));

  Future<void> tapAddButton() async {
    await tester.tap(_addButtonFinder);
    await tester.pumpAndSettle();
  }

  Future<void> _tapNavBarItem(Finder finder) async {
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  Future<void> tapAllNavBarItem() async {
    await _tapNavBarItem(_allNavBarItemFinder);
  }

  Future<void> tapIncompleteNavBarItem() async {
    await _tapNavBarItem(_allNavBarItemFinder);
  }

  Future<void> tapCompleteNavBarItem() async {
    await _tapNavBarItem(_allNavBarItemFinder);
  }

  Future<void> tapCheckbox(String todoId, String name) async {
    final checkboxFinder = find.byKey(Key(SharedKeys.checkboxButton(todoId)));
    await tester.tap(checkboxFinder);
    await tester.pumpAndSettle();
  }

  Future<void> tapTodoTile(String todoId, String todoName) async {
    final todoTileFinder =
        find.byKey(Key(SharedKeys.todoTile(todoId, todoName)));
    await tester.tap(todoTileFinder);

    await tester.pumpAndSettle();
    expect(find.text('Edit Todo'), findsOneWidget);
  }

  void expectTile(String todoId, String todoName) {
    final todoTileFinder =
        find.byKey(Key(SharedKeys.todoTile(todoId, todoName)));
    expect(todoTileFinder, findsOneWidget);
  }

  void expectMissingTile(String todoId, String todoName) {
    final todoTileFinder =
        find.byKey(Key(SharedKeys.todoTile(todoId, todoName)));
    expect(todoTileFinder, findsNothing);
  }

  void expectCheckboxWithStatus(
      String todoId, String todoName, bool isComplete) {
    final checkboxIconFinder =
        find.byKey(Key(SharedKeys.checkboxIcon(todoId, isComplete)));
    expect(checkboxIconFinder, findsOneWidget);
  }
}

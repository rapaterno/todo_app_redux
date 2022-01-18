import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';
import 'package:test/test.dart';
import 'package:todo_app_redux/presentation/shared/todo_list/todo_tile.dart';

class GivenEmptyTodos extends Given {
  final FlutterDriver driver;

  GivenEmptyTodos(this.driver)
      : super(StepDefinitionConfiguration()
          ..timeout = const Duration(seconds: 120));

  @override
  Future<void> executeStep() async {
    await driver.runUnsynchronized(() async {
      try {
        await driver.waitFor(find.byType("TodoTile"),
            timeout: const Duration(seconds: 2));
      } catch (e) {
        expect(e, isNotNull);
      }
    });
  }

  @override
  Pattern get pattern => RegExp('the todo list is empty');
}

class WhenCreateTodo extends When1<String> {
  final FlutterDriver driver;

  WhenCreateTodo(this.driver):super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 120)); 


  @override
  Future<void> executeStep(String todoName) async  {
    await driver.runUnsynchronized(() async {
      final 
    });
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => "the user creates a todo with name {string}";
}

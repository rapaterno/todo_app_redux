import 'package:sqflite/sql.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/data/provider/local_database/database_constants.dart';
import 'package:todo_app_redux/data/provider/local_database/database_provider.dart';

abstract class AbstractTodoDao {
  Future<void> createTodo(Todo todo);

  Future<List<Todo>> selectAllTodos();

  Future<void> updateTodo(Todo todo);

  Future<void> deleteTodo(Todo todo);
}

class TodoDao implements AbstractTodoDao {
  final DatabaseProvider _dbProvider = DatabaseProvider.dbProvider;

  @override
  Future<void> createTodo(Todo todo) async {
    final db = await _dbProvider.database;

    await db.insert(kTodoTable, _todoToMap(todo),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<void> deleteTodo(Todo todo) async {}

  @override
  Future<List<Todo>> selectAllTodos() async {
    final db = await _dbProvider.database;
    final List<Map<String, dynamic>> map = await db.query(kTodoTable);

    return List.generate(map.length, (index) {
      final todoMap = map[index];
      return _todoFromMap(todoMap);
    });
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    final db = await _dbProvider.database;
    await db.update(kTodoTable, _todoToMap(todo),
        where: 'id = ?', whereArgs: [todo.id]);
  }

  int _boolToInt(bool value) {
    return value ? 1 : 0;
  }

  Map<String, dynamic> _todoToMap(Todo todo) {
    return {
      'is_complete': todo.isComplete ? 1 : 0,
      'name': todo.name,
      'id': todo.id,
    };
  }

  Todo _todoFromMap(Map<String, dynamic> map) {
    return Todo((updates) => updates
      ..id = map['id']
      ..name = map['name']
      ..isComplete = map['is_complete'] == 1);
  }
}

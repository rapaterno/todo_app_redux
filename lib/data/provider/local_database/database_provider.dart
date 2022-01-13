import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//Migration Scripts to easier manage table versions and database modifications
Map<int, String> migrationScripts = {
  1: '''CREATE TABLE todos(
    id TEXT PRIMARY KEY,
    name TEXT,
    is_complete INTEGER
  )'''
};

class DatabaseProvider {
  static final DatabaseProvider dbProvider = DatabaseProvider();

  Database? _database;

  ///Getter function to create a database if [_database] is uninitialized
  Future<Database> get database async {
    if (_database != null)
      return _database!;
    else {
      _database = await createDatabase();
      return _database!;
    }
  }

  Future<Database> createDatabase() async {
    int migrationVersion = migrationScripts.length;

    String path = join(await getDatabasesPath(), 'todo.db');
    return openDatabase(path,
        version: migrationVersion, onCreate: initDB, onUpgrade: onUpgrade);
  }

  void onUpgrade(Database db, int oldVersion, int newVersion) async {
    for (int i = oldVersion + 1; i <= newVersion; i++) {
      await db.execute(migrationScripts[i]!);
    }
  }

  void initDB(Database db, int version) async {
    int migrationVersion = migrationScripts.length;

    for (int i = 1; i <= migrationVersion; i++) {
      await db.execute(migrationScripts[i]!);
    }
  }

  static deleteTodoDatabase() async {
    String path = join(await getDatabasesPath(), 'todo.db');
    deleteDatabase(path);
  }
}

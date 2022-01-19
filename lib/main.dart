import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/presentation/app.dart';
import 'package:todo_app_redux/shared/keys.dart';

void main() {
  runApp(App());
}

String getFirstTodoWithName(String name) {
  final store = _getStore();
  final todos = store.state.todosState.todos;
  String returnId = "";
  todos.forEach((id, todo) {
    if (todo.name == name) {
      returnId = todo.id;
    }
    ;
  });

  return returnId;
}

Store<AppState> _getStore() {
  return StoreProvider.of<AppState>(SharedKeys.navKey.currentContext!);
}

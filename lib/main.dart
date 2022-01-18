import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/presentation/app.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {
  if (_isTest()) {
    enableFlutterDriverExtension(handler: (message) async {
      switch (message) {
        case EventsConstants.getTodos:
          return _getFirstTodoId();
      }

      return '';
    });
  }
  runApp(App());
}

String _getFirstTodoId() {
  final store = _getStore();
  final keys = store.state.todosState.todos.keys.toList();

  return keys.isEmpty ? "" : keys[0];
}

Store<AppState> _getStore() {
  return StoreProvider.of<AppState>(
      GlobalKey<NavigatorState>().currentContext!);
}

bool _isTest() {
  return Platform.environment.containsKey('FLUTTER_TEST');
}

class EventsConstants {
  static const String getTodos = 'Get Todos';
}

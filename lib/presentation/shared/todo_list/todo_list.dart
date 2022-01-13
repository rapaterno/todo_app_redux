import 'package:flutter/material.dart';
import 'package:todo_app_redux/data/model/todo.dart';

import 'todo_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList(this.todos, this.onCheckboxTapped, this.onTileTapped);

  final List<Todo> todos;
  final Function(Todo) onCheckboxTapped;
  final Function(Todo) onTileTapped;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          Todo todo = todos[index];
          return TodoTile(todo, onCheckboxTapped, onTileTapped);
        });
  }
}

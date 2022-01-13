import 'package:flutter/material.dart';
import 'package:todo_app_redux/data/model/todo.dart';

const leadingKey = "checkboxKey";

class TodoTile extends StatelessWidget {
  const TodoTile(this.todo, this.onCheckboxTapped, this.onTileTapped);

  final Todo todo;
  final Function(Todo) onCheckboxTapped;
  final Function(Todo) onTileTapped;

  ///Returns a checked checkbox icon if [task.isComplete] is true, unchecked if false
  Widget _buildLeading() {
    return GestureDetector(
      key: Key(leadingKey),
      onTap: () => onCheckboxTapped(todo),
      child: Icon(
          todo.isComplete ? Icons.check_box : Icons.check_box_outline_blank),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.name),
      leading: _buildLeading(),
      onTap: () async => onTileTapped(todo),
    );
  }
}

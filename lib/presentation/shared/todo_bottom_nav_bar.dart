import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/router/routes.dart';
import 'package:todo_app_redux/shared/keys.dart';

List<String> routes = [
  Routes.allTasks,
  Routes.completeTasks,
  Routes.incompleteTasks
];

class TodoBottomNavBar extends StatelessWidget {
  const TodoBottomNavBar({required this.currentIndex});

  final int currentIndex;
  void _onItemTapped(int index, BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, routes[index], (route) => false);
  }

  BottomNavigationBarItem _createNavBarItem(
      IconData icon, String text, Key key) {
    return BottomNavigationBarItem(
        tooltip: text, icon: Icon(icon, key: key), label: text);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _createNavBarItem(Icons.home, "All", Key(SharedKeys.allNavBarItem)),
        _createNavBarItem(
            Icons.check_box, "Complete", Key(SharedKeys.completeNavBarItem)),
        _createNavBarItem(Icons.indeterminate_check_box, "Incomplete",
            Key(SharedKeys.incompleteNavBarItem)),
      ],
      currentIndex: currentIndex,
      onTap: (int index) => {_onItemTapped(index, context)},
    );
  }
}

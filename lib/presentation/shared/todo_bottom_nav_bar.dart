import 'package:flutter/material.dart';
import 'package:todo_app_redux/presentation/router/routes.dart';

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

  BottomNavigationBarItem _createNavBarItem(IconData icon, String text) {
    return BottomNavigationBarItem(icon: Icon(icon), label: text);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _createNavBarItem(Icons.home, "All"),
        _createNavBarItem(Icons.check_box, "Complete"),
        _createNavBarItem(Icons.indeterminate_check_box, "Incomplete"),
      ],
      currentIndex: currentIndex,
      onTap: (int index) => {_onItemTapped(index, context)},
    );
  }
}

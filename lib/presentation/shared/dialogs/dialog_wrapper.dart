import 'package:flutter/material.dart';

class DialogWrapper extends StatelessWidget {
  const DialogWrapper({required this.title, required this.child, this.action});
  final String title;
  final Widget child;
  final Widget? action;

  ///The first [Column] widget is so the dialog adjusts
  ///to the size of the children
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: SizedBox.expand(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTitle(context),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              child
            ]),
          ),
        ],
      )),
    );
  }

  ///Defaults to just a title except if [action] isn't null
  Widget _buildTitle(context) {
    List<Widget> children = [
      Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    ];
    if (action != null) {
      children.add(action!);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }
}

import 'package:flutter/material.dart';
import 'dialog_wrapper.dart';

const saveButtonKey = 'saveButtonKey';
const errorText = 'There has been an error. Try again';

class CreateTodoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DialogWrapper(title: "Create Todo", child: _buildChild(context));
  }

  Widget _buildChild(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    ;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          autofocus: true,
          controller: _textController,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close')),
            ElevatedButton(
                key: Key(saveButtonKey),
                onPressed: () {
                  Navigator.pop(context, _textController.text);
                },
                child: Text('Save'))
          ],
        )
      ],
    );
  }
}

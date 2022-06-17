import 'package:flutter/material.dart';

class EditWidget extends StatelessWidget {
  // const EditWidget({Key? key}) : super(key: key);

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("edit"),
      content: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(hintText: ('Enter Your Task')),
      ),
      actions: [
        new ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            print(_textEditingController);
          },
          child: Text('Update'),
        ),
      ],
    );
  }
}

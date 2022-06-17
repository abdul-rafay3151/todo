import 'dart:js';

import 'package:flutter/material.dart';

TextEditingController _textEditingController = TextEditingController();

editWidget(context) {
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

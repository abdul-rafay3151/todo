import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:myapp/edit-widget.dart';
import 'package:myapp/global.dart';
import 'dart:js';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  List<String> chatnames = [];
  List<String> update1 = [];
  TextEditingController chat = TextEditingController();
  TextEditingController _textEditingController = TextEditingController();
  delchats(int index) {
    setState(() {
      chatnames.removeAt(index);
    });
  }

  addChats() {
    setState(() {
      chatnames.add(chat.text);
      chat.clear();
    });
    print(chatnames);
  }

  update() {
    setState(() {
      update1.add(_textEditingController.text);
      _textEditingController.clear();
    });
    print(update1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextField(
              controller: chat,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              addChats();
            },
            child: Text('add item'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatnames.length,
              itemBuilder: (context, int index) {
                return ListTile(
                  tileColor: Colors.grey,
                  title: Text(chatnames[index]),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            delchats(index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => (AlertDialog(
                                      title: Text("edit"),
                                      content: TextField(
                                        controller: _textEditingController,
                                        decoration: InputDecoration(
                                            hintText: ('Enter Your Task')),
                                      ),
                                      actions: [
                                        new ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            // update();
                                            setState(() {
                                              chatnames.replaceRange(
                                                  index, index + 1, {
                                                _textEditingController.text
                                              });
                                              _textEditingController.clear();
                                            });
                                            // print(_textEditingController);
                                          },
                                          child: Text('Update'),
                                        ),
                                      ],
                                    )));
                            // setState(() {
                            //   chatnames[index] = _textEditingController.text;
                            // });
                          },
                          icon: Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

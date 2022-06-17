import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTile1 extends StatefulWidget {
  const ListTile1({Key? key}) : super(key: key);

  @override
  State<ListTile1> createState() => _ListTile1State();
}

class _ListTile1State extends State<ListTile1> {
  List<String> chatnames = [];
  TextEditingController chat = TextEditingController();
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
                            setState(() {
                              chatnames[index] = "hello";
                            });
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

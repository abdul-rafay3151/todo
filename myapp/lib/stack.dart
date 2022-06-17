import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stack1 extends StatelessWidget {
  const Stack1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
            height: 200,
            width: 200,
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              color: Colors.cyan,
              height: 150,
              width: 150,
            ),
          ),
          // Container(
          //   color: Colors.amber,
          //   height: 100,
          //   width: 150,
          // ),
        ],
      ),
    );
  }
}

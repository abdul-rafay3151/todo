import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/home.dart';

class Spalsh1 extends StatefulWidget {
  const Spalsh1({Key? key}) : super(key: key);

  @override
  State<Spalsh1> createState() => _Spalsh1State();
}

class _Spalsh1State extends State<Spalsh1> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home()))));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

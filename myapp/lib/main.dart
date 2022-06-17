import 'package:flutter/material.dart';
import 'package:myapp/listTile.dart';
import 'package:myapp/new.dart';
import 'package:myapp/splash.dart';
import 'package:myapp/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: New(),
    );
  }
}

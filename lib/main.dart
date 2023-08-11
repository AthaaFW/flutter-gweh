import 'package:flutter/material.dart';
import 'package:untitled/lat3.dart';
import 'package:untitled/lat3home.dart';
import 'package:untitled/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Home(),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyBlocDemo());

class MyBlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(child:Text("First"))
    );
  }
}
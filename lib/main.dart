import 'package:flutter/material.dart';
import 'package:my_bloc/data/moor_database.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyBlocDemo());

class MyBlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => LeagueDatabase(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Center(child:Text("First"))
      ),
    );
  }
}
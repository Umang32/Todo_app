import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/homepage.dart';
import 'package:todo_app/todos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title ='Notes App';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
    ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
      title: title,
        theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFf6f5ee),
        ),
        home: HomePage(),
        ),


    );

  }




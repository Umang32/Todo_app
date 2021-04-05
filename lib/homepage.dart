import 'package:flutter/material.dart';
import 'package:todo_app/AddTodoDialogWidget.dart';
import 'package:todo_app/todo_widget.dart';
import 'package:todo_app/Todo_list_widget.dart';

import 'CompletedListWidget.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
     final tabs = [TodoListWidget(), CompletedListWidget(),];

    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState((){
          selectedIndex = index;

        }),
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.fact_check_outlined),
          label: 'Todos',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.done_sharp),
    label: 'Completed',
          )
        ]
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellowAccent,
        onPressed: () => showDialog(context: context,
          builder: (BuildContext context) => AddTodoDialogWidget(),
        barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}

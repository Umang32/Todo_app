import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/todo_widget.dart';
import 'package:todo_app/todos.dart';
import 'package:todo_app/todoprovider.dart';


class CompletedListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todosCompleted;


    return todos.isEmpty ?
    Center(child:
    Text('No Completed Task.',
      style: TextStyle(fontSize: 20),
    ),
    )
        : ListView.separated(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index)
      => Container(height: 8,),
      itemCount: todos.length,
      itemBuilder: (context, index)
      {
        final todo = todos[index];
        return TodoWidget(todo: todo);
      },


    );
  }
}

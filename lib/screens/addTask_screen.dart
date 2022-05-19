import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 16,
        ),
        Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
        ),
        TextField(
          onChanged: ((value) {
            newTaskTitle = value;
          }),
          autofocus: true,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 110,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text('Add'),
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
            child: Text('Add'),
          ),
        ),
      ]),
    );
  }
}

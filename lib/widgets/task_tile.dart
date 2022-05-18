import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is task '),
      trailing: CheckBox(CheckBoxState: isChecked),
    );
  }
}

class CheckBox extends StatelessWidget {
  final bool CheckBoxState;
  CheckBox({required this.CheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: CheckBoxState,
        onChanged: (newValue) {});
  }
}

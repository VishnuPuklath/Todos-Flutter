import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  checkBoxCallBack(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is task ',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:
          CheckBox(CheckBoxState: isChecked, toggleCheckBox: checkBoxCallBack),
    );
  }
}

class CheckBox extends StatelessWidget {
  final bool CheckBoxState;
  final Function(bool?) toggleCheckBox;
  CheckBox({required this.CheckBoxState, required this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: CheckBoxState,
        onChanged: toggleCheckBox);
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/task_data.dart';

import 'package:todos/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: ((context, index) {
            return TaskTile(
                longPressCallBack: () {
                  print('long press callback suce');
                  taskData.deleteTask(taskData.tasks[index]);
                },
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].taskName,
                checkboxCallBack: (checkboxState) {
                  taskData.updateTask(taskData.tasks[index]);
                });
          }),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todos/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Buy Milk', isDone: false),
    Task(taskName: 'Buy Bread', isDone: false),
    Task(taskName: 'Buy bake', isDone: false)
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(taskName: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

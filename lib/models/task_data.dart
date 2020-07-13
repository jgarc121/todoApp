import 'package:flutter/cupertino.dart';
import 'package:todoapp/models/dynamic_task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Dynamic_Task> _tasks = [
  ];

  UnmodifiableListView<Dynamic_Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Dynamic_Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Dynamic_Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Dynamic_Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}

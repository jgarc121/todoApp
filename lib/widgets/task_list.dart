import 'package:flutter/material.dart';
import 'task.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return GestureDetector(
            child: Task(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallBack: () {
                  taskData.updateTask(task);
                },
              ),
            onLongPress: () {
              taskData.deleteTask(task);
            },
          );
        },
          itemCount: taskData.tasks.length,
        );
      }

    );
  }
}
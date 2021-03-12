import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp1/models/task_data.dart';

import 'package:todoapp1/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Tasktile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxcallback: (bool checkboxstate) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                longPressCallBack: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            },
            itemCount: taskData.taskCount,
          );
        },
        //
      ),
    );
  }
}

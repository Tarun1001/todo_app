import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp1/models/task_data.dart';

class Tasktile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxcallback;
  final Function longPressCallBack;
  Tasktile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxcallback,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}

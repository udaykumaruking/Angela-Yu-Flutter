import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function onLongpressCallBack;
  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkBoxCallBack,
      this.onLongpressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongpressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

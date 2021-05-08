import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tiles.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallBack: (checkBoxState) {
              // setState(() {
              //   Provider.of<TaskData>(context).tasks[index].toggleTask();
              // });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}

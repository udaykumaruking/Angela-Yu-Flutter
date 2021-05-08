import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy eggs'),
  ];

  int get taskCount {
    return tasks.length;
  }
}

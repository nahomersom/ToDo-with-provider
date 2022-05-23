
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name:'Learn Flutter'),
    Task(name:'Learn Flutter')
  ];
  UnmodifiableListView<Task> get tasks{

    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
void updateTask(Task task){
    task.toggleTask();
    notifyListeners();
}
void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
}
}

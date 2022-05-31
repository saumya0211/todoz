import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoz/models/Task.dart';

class TaskData extends ChangeNotifier{
  List <Task> _TaskListholder = [
    Task(TaskText: 'Buy Chips'),
    Task(TaskText: 'Buy Eggs'),
    Task(TaskText: 'Buy chocolates'),
  ];
  
  UnmodifiableListView <Task> get TaskListholder{
    return UnmodifiableListView(_TaskListholder);
  }

  int get TaskCount{
    return _TaskListholder.length;
  }

  void addTask(String newTasktitle){
    _TaskListholder.add(Task(TaskText: newTasktitle));
    notifyListeners();
  }

  void UpdateTask(Task task){
    task.ToggleCheckState();
    notifyListeners();
  }

  void delete(Task task){
    _TaskListholder.remove(task);
    notifyListeners();
  }
}
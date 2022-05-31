import 'package:flutter/material.dart';
import 'package:todoz/Widgets/Task_level.dart';
import 'package:todoz/models/Task_data.dart';
import 'package:provider/provider.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TaskData>(context).TaskCount,
        itemBuilder: (context,index){
      return TaskContainer(
        onLongPressCallBack: (){
          Provider.of<TaskData>(context,listen: false).delete(Provider.of<TaskData>(context,listen: false).TaskListholder[index]);
        },
          TaskText: Provider.of<TaskData>(context).TaskListholder[index].TaskText,
          marked: Provider.of<TaskData>(context).TaskListholder[index].isDone,
          ToggleCallBackFunction: (check){
            Provider.of<TaskData>(context,listen: false).UpdateTask(Provider.of<TaskData>(context,listen: false).TaskListholder[index]);
          });
    });
  }
}
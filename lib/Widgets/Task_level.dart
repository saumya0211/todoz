import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  TaskContainer({
    required this.TaskText,
    required this.marked ,
    required this.ToggleCallBackFunction,
    required this.onLongPressCallBack});
  String  TaskText;
  bool marked ;
  void Function(bool?) ? ToggleCallBackFunction;
  VoidCallback onLongPressCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
      title: Text(TaskText ,style: TextStyle(decoration: marked ? TextDecoration.lineThrough:null,),),
      trailing: Checkbox(
        value: marked,
       onChanged: ToggleCallBackFunction,

      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoz/Widgets/TaskList_level.dart';
import 'package:todoz/screens/AddTask_Screen.dart';
import 'package:todoz/Utilities/constants.dart';
import '../models/Task_data.dart';


class MainScreen extends StatelessWidget {
  bool ? checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,color: secondarycolor ,),
          backgroundColor: primaryShinecolor,
          onPressed: (){

            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context)=>SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: BottomSheatContainer(),
                  ),
                ));
          }),
      backgroundColor: primaryShinecolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 10, 10),
              child: CircleAvatar(child: Icon(Icons.menu,color: Colors.amber,),
                backgroundColor: Colors.white,
                radius: 20,),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 10, 0),
              child: Text('ToDoz',
                style: TextStyle(color: Colors.white,
                    fontSize: 70,
                    fontFamily: 'Galada',fontWeight: FontWeight.w500),),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 10, 10),
              child: Text('${Provider.of<TaskData>(context).TaskCount} Tasks Left',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w300),),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30,top: 20,right: 30),
                  child: TaskList(),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}





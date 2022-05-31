import 'package:flutter/material.dart';
import 'package:todoz/Utilities/constants.dart';
import 'package:todoz/Widgets/NavButton.dart';
import 'package:provider/provider.dart';
import 'package:todoz/models/Task_data.dart';

class BottomSheatContainer extends StatefulWidget {

  @override
  State<BottomSheatContainer> createState() => _BottomSheatContainerState();
}

class _BottomSheatContainerState extends State<BottomSheatContainer> {
 TextEditingController _TxtEdit = TextEditingController();

 String ? value;
 String ? TaskMsg;
 bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 30),
              child: Text('ADD TASK',
                style: TextStyle(color: secondarycolor,
                    fontSize: 40,
                    fontFamily: 'Galada',fontWeight: FontWeight.w500),),
            ),

            Padding(
              padding:EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
              child: TextField(
                 autofocus: true,
                 controller: _TxtEdit,
                 textAlign: TextAlign.center,
                 decoration: KTextfieldDecoration,
                onChanged: (value){
                   TaskMsg = value;
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 20),
              child: NavButton(BgColour: secondarycolor,
              ButtonText: Text('ADD',style: TextStyle(color: primarycolor)),
              CallBackFunction: (){
                Provider.of<TaskData>(context,listen: false).addTask(TaskMsg!);
                Navigator.pop(context);
                _TxtEdit.clear();
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

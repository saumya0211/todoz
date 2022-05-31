import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoz/models/Task_data.dart';
import 'package:todoz/screens/MainScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskData(),
      child: MaterialApp(
        home: MainScreen() ,
      ),
    );
  }
}


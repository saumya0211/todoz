import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primarycolor = Colors.amber;
Color primaryShinecolor = Colors.amberAccent;
Color secondarycolor = Colors.brown;

InputDecoration KTextfieldDecoration = InputDecoration(
  hintText: '    Type your task here...',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: secondarycolor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: secondarycolor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

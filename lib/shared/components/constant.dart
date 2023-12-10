import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtg/modules/toDoList/archiveTasks.dart';
import 'package:mtg/modules/toDoList/doneTasks.dart';
import 'package:mtg/modules/toDoList/tasks.dart';
int currentIndex = 0;
List <String> pageTitle = [
  'New Tasks',
  'Done Tasks',
  'Archive Tasks',
];
List <Color> ScreenColors = [
    Colors.blueAccent,
    Colors.green,
    Colors.orange
];
List <Widget> Screens = [
  tasks(),
  doneTasks(),
  archiveTask(),
];

List <Icon> todoIcons =[
  Icon(Icons.list_outlined),
  Icon(Icons.done),
  Icon(Icons.archive),
];
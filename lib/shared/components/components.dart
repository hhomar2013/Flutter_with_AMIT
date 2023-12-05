import 'package:flutter/material.dart';
Widget defaultButton({
  double width = double.maxFinite,
  double height = 50,
  double radius = 10,
  Color backGround = Colors.brown,
  required Function function,
  required String text,
  bool  isUpperCase = false,
}) => Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: backGround,
      borderRadius: BorderRadius.circular(radius),
    ),
  child: MaterialButton(
    onPressed: (){
      function ();
    },
    child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
  ) ,
));


Widget _IconButton({
  Color color = Colors.white,
  required Function function,
}) => IconButton(
icon: Icon(Icons.arrow_back_ios_new_rounded),
  color: color,
  onPressed: () { function (); },
);
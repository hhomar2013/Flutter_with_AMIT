import 'package:flutter/material.dart';

class tasks extends StatelessWidget {
  const tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Text('Tasks' ,
      style:  TextStyle(
        fontSize: 50,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}

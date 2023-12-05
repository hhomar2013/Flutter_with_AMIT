import 'package:flutter/material.dart';

class doneTasks extends StatelessWidget {
  const doneTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Text('Done Tasks' ,
        style:  TextStyle(
            fontSize: 50,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

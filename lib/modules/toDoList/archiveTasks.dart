import 'package:flutter/material.dart';

class archiveTask extends StatelessWidget {
  const archiveTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Text('Archive Tasks' ,
        style:  TextStyle(
            fontSize: 50,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

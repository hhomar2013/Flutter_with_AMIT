import 'package:flutter/material.dart';
import 'package:mtg/layout/Home.dart';
import 'package:mtg/layout/routs.dart';
import 'package:mtg/layout/to_do_list.dart';
import 'package:mtg/layout/bmi.dart';
import 'package:mtg/contacts.dart';
import 'package:mtg/conter.dart';
import 'package:mtg/login_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  routsScreen(),
    );
  }
}

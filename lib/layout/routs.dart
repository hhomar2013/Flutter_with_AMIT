import 'package:flutter/material.dart';
import 'package:mtg/layout/Home.dart';
import 'package:mtg/layout/bmi.dart';
import 'package:mtg/layout/to_do_list.dart';
import 'package:mtg/login_screen.dart';
import '../shared/components/components.dart';
class routsScreen extends StatelessWidget {
  const routsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                'AMIT LEARNING',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                  SizedBox(height: 10,),
                defaultButton(function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> HomeScreen()));
                },backGround: Colors.blueAccent, text: 'Photo Gallery'), // Photo Gallery
                SizedBox(height: 10,),
                defaultButton(function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> LoginScreen()));
                },backGround: Colors.indigo, text: 'Messenger Clone'), // Messenger Clone
                SizedBox(height: 10,),
                defaultButton(function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> bmiCalculator()));
                }, text: 'BMI Calculator'), //Bim Calculator
                SizedBox(height: 10,),
                defaultButton(function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> toDoList()));
                }, text: 'To Do List',backGround: Colors.teal), //To Do List
              ],
            ),
          ),
        ),
    );
  }
}

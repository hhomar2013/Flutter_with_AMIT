import 'package:flutter/material.dart';
import 'package:mtg/shared/components/components.dart';

class bmiResultScreen extends StatelessWidget {

   bool isMale = true;
   int result = 0;
   int age = 0;

   bmiResultScreen({
    Key? key,
    required this.age,
    required this.result,
    required this.isMale,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb101322),
      appBar: AppBar(
        backgroundColor: Color(0xffb101322),
        title: Text('BMI Result',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container (
              child: Column(
                children: [
                  isMale ? Text('Male' ,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                    ),
                  ) : Text('Female',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                    ),
                  ),
                  Text('Age ${age}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                  Text('Result $result BMI',
                    style: TextStyle(
                    color: Colors.white,
                        fontSize: 30
                  ),
                  ),
                SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defaultButton(
                    text: 'Go back',
                      backGround: Color(0xffbe6144b),
                      isUpperCase: false,
                      radius: 25,
                      height: 40,
                      function: () {
                      Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

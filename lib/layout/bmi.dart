import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mtg/shared/components/components.dart';
import '../modules/bmi/bmi_result.dart';
class bmiCalculator extends StatefulWidget {
  const bmiCalculator({super.key});
  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}
class _bmiCalculatorState extends State<bmiCalculator> {
  bool isMale = true;
  double height = 170;
  int weight = 60;
  int age = 27;
  String gender = 'Male';
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb101322),
      appBar: AppBar(
        backgroundColor: Color(0xffb101322),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        elevation: 1,
        title: Center(
            child: Text('BMI CALCULATOR',
              style: TextStyle(
                color: Colors.white,
              ),
            )
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                          isMale ? gender = 'Male' : gender = 'Female';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue : Colors.black38 ,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Text('MALE',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),//Male
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                          isMale ? gender = 'Male' : gender = 'Female';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.black38  : Color(0xffbe6144b) ,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Text('FEMALE',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),//Female
              ],
            ),
          ),//Mal OR Female
          // SizedBox(height: 5,),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$gender',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${height.round().toString()} Cm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18)
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 60,
                          max: 220,
                          activeColor: Colors.grey,
                          thumbColor: Color(0xffbe6144b),
                          onChanged: (double value){
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),// Navigation
          // SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(30),),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('weight',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                            Text('$weight',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight > 60 ? weight-- : '';

                                    });
                                  },
                                  child: Icon(Icons.remove,
                                      color: Colors.white,
                                      size: 30),
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.grey.withOpacity(0.8),
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                  weight++;
                                  });
                                },
                                  child: Icon(Icons.add,
                                      color: Colors.white,
                                      size: 30
                                  ),
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.grey.withOpacity(0.8),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//weight
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(30),),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                            Text('$age',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age > 15 ? age-- : '';
                                    });
                                  },
                                  child: Icon(Icons.remove,
                                      color: Colors.white,
                                      size: 30),
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.grey.withOpacity(0.8),
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                  child: Icon(Icons.add,
                                      color: Colors.white,
                                      size: 30
                                  ),
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.grey.withOpacity(0.8),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//age
                ],
              ),
            ),

          ),//age and weight
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffbe6144b)
            ),
            width: double.maxFinite,
            child:
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(0.8),
                  child: TextButton(onPressed: (){
                    double result = weight / pow(height/100,2) ;
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> bmiResultScreen(age: age, result: result.round(), isMale: isMale))
                    );
                  },
                    child: Text('CALCULATE',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                )
            ),
          )//Calculator button
        ],
      ),
    );
  }
}

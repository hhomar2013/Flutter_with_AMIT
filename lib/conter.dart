import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  // const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Conter',
        style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                setState(() {
                    counter--;
                });
              },
                child: Text('Minus',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('$counter',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              TextButton(onPressed: (){
                setState(() {
                  counter++;
                });
              },
                child: Text('Plus',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}

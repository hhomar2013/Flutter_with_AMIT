import 'package:flutter/material.dart';
import 'package:mtg/shared/components/constant.dart';

class toDoList extends StatefulWidget {
  const toDoList({super.key});

  @override
  State<toDoList> createState() => _toDoListState();
}

class _toDoListState extends State<toDoList> {

  @override
  void  initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ScreenColors[currentIndex],
        title: Text(
          pageTitle[currentIndex],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Screens[currentIndex],
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            setState((){
              currentIndex = index;
            });
          },
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.list) ,label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.done) ,label: 'Done'),
            BottomNavigationBarItem(icon: Icon(Icons.archive) ,label: 'Archive'),
          ]),
    );
  }
}

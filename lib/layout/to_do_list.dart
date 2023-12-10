import 'package:flutter/material.dart';
import 'package:mtg/shared/components/constant.dart';
import 'package:sqflite/sqflite.dart';

class toDoList extends StatefulWidget {
  const toDoList({super.key});

  @override
  State<toDoList> createState() => _toDoListState();
}

class _toDoListState extends State<toDoList> {
  @override
  void  initState(){
    super.initState();
    createDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ScreenColors[currentIndex],
        leading: todoIcons[currentIndex],

        title: Text(
          pageTitle[currentIndex],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
         getname().then((value) => print(value)).catchError((error) => print('Error is $error'));
          // var name = await getname();
          // print(name);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: ScreenColors[currentIndex],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue.withOpacity(0.5),
          selectedItemColor: Colors.white,
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
  Future<String> getname() async{
    return 'AMIT';
  }
  //Create database
  void createDatabase() async{
    var database = await openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database , version) {
          database.execute("CREATE TABLE tasks(id INTEGER PRIMARY KEY ,title TEXT ,date TEXT ,time TEXT ,status TEXT)").then((value) {
            print('Table Created');
          }).catchError((error){
            print('Error in create this table ${error.toString()}');
          });
        },
        onOpen: (database){
          print('DB Opened');
        }
    );
  }
}


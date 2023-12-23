import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mtg/modules/toDoList/cubit/cubit.dart';
import 'package:mtg/modules/toDoList/cubit/status.dart';
import 'package:mtg/shared/components/components.dart';
import 'package:mtg/shared/components/constant.dart';
import 'package:sqflite/sqflite.dart';

class toDoList extends StatelessWidget {
  const toDoList({super.key});
  Widget build(BuildContext context) {
    return  BlocProvider(
      create:  (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit,AppStatus>(
        listener: (context,state) {},
        builder:(context,state) {
          AppCubit cubit = AppCubit.get(context);
          return  Scaffold(
            key: scaffoldState,
            appBar: AppBar(
              backgroundColor: cubit. ScreenColors[cubit.currentIndex],
              // leading: todoIcons[currentIndex],
              title: Text(
               cubit.pageTitle[cubit.currentIndex],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: ConditionalBuilder(
                condition: state is! AppGetDataBaseLoadingState,
                builder: (context) => cubit.Screens[cubit.currentIndex],
                fallback: (context) => Center(child: CircularProgressIndicator(),)),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if(cubit.isBottomSheetShown){
                  if(formKey.currentState!.validate()){
                    Navigator.pop(context);
                    cubit.isBottomSheetShown= false;
                    cubit.fabIcon = Icons.edit;
                  }
                }else{
                  scaffoldState.currentState!.showBottomSheet(
                        (context) => Container(
                      color: Colors.grey.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              defaultTextField(
                                controller: titleController,
                                label: 'Task Title',
                                prefix: Icons.title,
                                type: TextInputType.text,
                                validate: (String value){
                                  if(value == null || value.isEmpty){
                                    return "Empty";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15,),
                              defaultTextField(
                                controller: timeController,
                                label: 'Time',
                                hintText: 'Time',
                                prefix: Icons.watch_later_outlined,
                                onTap: (){
                                  showTimePicker(context: context,
                                      initialTime: TimeOfDay.now()).then((value) {
                                    timeController.text = value.toString();
                                  });
                                },
                                type: TextInputType.datetime,
                                validate: (String value){
                                  if(value == null || value.isEmpty){
                                    return "Empty";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15,),
                              defaultTextField(
                                controller: dateController,
                                label: 'Date',
                                hintText: 'Date',
                                prefix: Icons.watch_later_outlined,
                                onTap: (){
                                  showDatePicker(context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime.parse('2027-01-01')
                                  ).then((value) {
                                    dateController.text = DateFormat.yMMMd().format(value!);
                                  });
                                },
                                type: TextInputType.datetime,
                                validate: (String value){
                                  if(value == null || value.isEmpty){
                                    return "Empty";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ).closed.then((value) {
                    cubit.isBottomSheetShown = false;
                    cubit.insertDatabase(title: titleController.text,
                        date: dateController.text,
                        time: timeController.text);
                    cubit.fabIcon = Icons.add;
                  });
                  cubit.isBottomSheetShown = true;
                  cubit.fabIcon = Icons.add;
                }

                // insertDatabase();
                // getname().then((value) => print(value)).catchError((error) => print('Error is $error'));
                // var name = await getname();
                // print(name);
              },
              child: Icon(
                cubit.fabIcon ,
                color: Colors.white,
              ),
              backgroundColor: cubit.ScreenColors[cubit.currentIndex],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.black.withOpacity(0.1),
                selectedItemColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                onTap: (index){
                  cubit.changeIndex(index);
                },
                items: const[
                  BottomNavigationBarItem(icon: Icon(Icons.list) ,label: 'Tasks'),
                  BottomNavigationBarItem(icon: Icon(Icons.done) ,label: 'Done'),
                  BottomNavigationBarItem(icon: Icon(Icons.archive) ,label: 'Archive'),
                ]),
          );
        }


      )
    );


  }
  Future<String> getname() async{
    return 'AMIT';
  }
}




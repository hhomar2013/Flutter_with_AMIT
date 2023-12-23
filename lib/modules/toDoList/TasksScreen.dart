import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg/modules/toDoList/cubit/cubit.dart';
import 'package:mtg/modules/toDoList/cubit/status.dart';
import 'package:mtg/shared/components/components.dart';
import 'package:mtg/shared/components/constant.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit,AppStatus>(
        builder: (context,state){
          var tasks = AppCubit.get(context).taskMap ;
          return taskBuilder(tasks: tasks);
        },
        listener: (context , state) {},
       );
    }

}

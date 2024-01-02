import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mtg/modules/newsapp/news_cubit.dart';
import 'package:mtg/modules/newsapp/news_status.dart';
import 'package:sqflite/utils/utils.dart';
class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        return   Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                cubit.changeAppDirection();
               cubit.getTechnology();
              }, icon: Icon(Icons.language) , iconSize: 50),
              // Text('Change Direction',
              // style: Theme.of(context).textTheme.bodyText1,
              // ),
              Text(
                  cubit.isRight ? 'اللغة العربية' : 'English',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        );
      },

    ) ;
  }
}

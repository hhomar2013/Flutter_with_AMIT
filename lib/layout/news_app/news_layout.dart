import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg/modules/newsapp/news_cubit.dart';
import 'package:mtg/modules/newsapp/news_status.dart';
import 'package:mtg/modules/newsapp/search.dart';
import 'package:mtg/shared/components/components.dart';
import 'package:mtg/shared/network/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context , state) {},
      builder: (context , state){
        var cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text( cubit.isRight ? 'الأخبار' : 'News'),
            actions: [
              IconButton(
                  onPressed: (){
                    navigateTo(context,SearchScreen());
                  },
                  icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: (){
                  cubit.changeAppMode();
                  cubit.getTechnology();
                  cubit.getScience();
                  cubit.getBusiness();
                },
                icon: Icon(Icons.brightness_4_rounded),
              ),
            ],
          ),
          body: cubit.screen[cubit.currentIndex],
          // floatingActionButton: FloatingActionButton(
          //   onPressed: (){
          //     DioHelper.getData(url: 'v2/top-headlines',
          //         query: {
          //           'country': 'eg',
          //           'category':'business',
          //           'apiKey' : 'e996ad2c79ff44db97ced88a53ea5a86',
          //         },
          //     ).then((value) {
          //       print(value.data.toString());
          //     }).catchError((error){
          //       print(error.toString());
          //     });
          //   },
          //   child: Icon(
          //     Icons.add,
          //   ),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeBottomNavBar(index);
              }, items: cubit.bottomItems,
          ),
        );
      },
    );
  }
}

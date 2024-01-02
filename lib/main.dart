import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mtg/layout/Home.dart';
import 'package:mtg/layout/news_app/news_layout.dart';
import 'package:mtg/layout/routs.dart';
import 'package:mtg/layout/to_do_list.dart';
import 'package:mtg/layout/bmi.dart';
import 'package:mtg/contacts.dart';
import 'package:mtg/conter.dart';
import 'package:mtg/messenger_clone.dart';
import 'package:mtg/modules/newsapp/news_cubit.dart';
import 'package:mtg/modules/newsapp/news_status.dart';
import 'package:mtg/modules/toDoList/cubit/status.dart';
import 'package:mtg/shared/network/dio_helper.dart';
import 'package:mtg/shared/network/local/cash_helper.dart';
import 'package:mtg/shared/style/bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  bool? isDark = CacheHelper.getData(key: 'isDark');
  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {
  final bool? isDark ;
  MyApp(this.isDark);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create:  (context) => NewsCubit()..getBusiness()..changeAppMode(fromShared: isDark),
      child: BlocConsumer<NewsCubit,NewsStates>(
        builder:(context, state)  {
         return  MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme:  AppBarTheme(
                  backgroundColor: Colors.white,
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.white,
                      statusBarBrightness: Brightness.dark
                  ),
                  elevation: 0,
                  titleTextStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.teal
                ),
                textTheme: TextTheme(
                    bodyText1: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )
                )
            ),
            darkTheme: ThemeData(
                primarySwatch: Colors.teal,
                scaffoldBackgroundColor: HexColor('333739'),
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                appBarTheme:  AppBarTheme(
                  iconTheme: IconThemeData(
                      color: Colors.white
                  ),
                  backgroundColor: HexColor('333739'),
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: HexColor('333739'),
                      statusBarBrightness: Brightness.light
                  ),
                  elevation: 0,
                  titleTextStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  backgroundColor: HexColor('333739'),
                  type: BottomNavigationBarType.fixed,
                  unselectedItemColor: Colors.white,
                  selectedItemColor: Colors.teal,

                ),
                textTheme: TextTheme(
                    bodyText1: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )
                )
            ),
            themeMode: NewsCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: Directionality(
                textDirection: NewsCubit.get(context).isRight ? TextDirection.rtl : TextDirection.ltr,
                child: NewsLayout()),
          );
        },
        listener:(context, state) {},

      ),
    );
  }
}

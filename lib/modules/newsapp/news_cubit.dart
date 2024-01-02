import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg/modules/newsapp/bussines.dart';
import 'package:mtg/modules/newsapp/news_status.dart';
import 'package:mtg/modules/newsapp/science.dart';
import 'package:mtg/modules/newsapp/settings.dart';
import 'package:mtg/modules/newsapp/technology.dart';
import 'package:mtg/shared/network/dio_helper.dart';
import 'package:mtg/shared/network/local/cash_helper.dart';

class NewsCubit extends Cubit<NewsStates>{
    NewsCubit() : super(NewsInitialState());
    static NewsCubit get(context) => BlocProvider.of(context);
    int currentIndex = 0;
    List<BottomNavigationBarItem>  bottomItems = [
        const BottomNavigationBarItem(
            icon: Icon(
            Icons.business
        ),
            label: 'Business'
        ),
        const BottomNavigationBarItem(
            icon: Icon(
            Icons.science
        ),
            label: 'Science'
        ),
        const BottomNavigationBarItem(
            icon: Icon(
            Icons.laptop
        ),
            label: 'Technology'
        ),
        const BottomNavigationBarItem(
            icon: Icon(
            Icons.settings
        ),
            label: 'Settings'
        ),
    ];

    void changeBottomNavBar(int index){
        currentIndex = index;
        if(index ==1){
            getScience();
        }
        if(index == 2){
            getTechnology();
        }
        emit(NewsBottomNavState());
    }
    List<Widget> screen = [
        BussinesScreen(),
        ScienceScreen(),
        TechnologyScreen(),
        SettingScreen(),
    ];
    List<dynamic> business = [];
    void  getBusiness(){
        emit(NewsGetBusinessLoadingState()); //Loading until data comes
        DioHelper.getData(
            url: 'v2/top-headlines',
            query: {
                'country': 'us',
                'category':'business',
                'apiKey' : 'e996ad2c79ff44db97ced88a53ea5a86',
            },
        ).then((value) {
            business = value.data['articles'];
            emit(NewsGetBusinessSuccessState());
            print(business[0]['author']);
        }).catchError((error){
            print(error.toString());
            emit(NewsGetBusinessErrorState(onError.toString()));
        });
    }

    List<dynamic> science = [];
    void  getScience(){
        emit(NewsGetScienceLoadingState()); //Loading until data comes
        if(science.length == 0){
            DioHelper.getData(
                url: 'v2/top-headlines',
                query: {
                    'country': 'us',
                    'category':'science',
                    'apiKey' : 'e996ad2c79ff44db97ced88a53ea5a86',
                },
            ).then((value) {
                science = value.data['articles'];
                emit(NewsGetScienceSuccessState());
                print(business[0]['author']);
            }).catchError((error){
                print(error.toString());
                emit(NewsGetScienceErrorState(onError.toString()));
            });
        }else{
            emit(NewsGetScienceSuccessState());
        }
    }

    List<dynamic> technology = [];
    void  getTechnology(){
        emit(NewsGetTechnologyLoadingState());   //Loading until data comes
        if(technology.length == 0 ){
            DioHelper.getData(
                url: 'v2/top-headlines',
                query: {
                    'country': 'eg',
                    'category': 'technology',
                    'apiKey' : 'e996ad2c79ff44db97ced88a53ea5a86',
                },
            ).then((value) {
                technology = value.data['articles'];
                emit(NewsGetTechnologySuccessState());
                print(business[0]['author']);
            }).catchError((error){
                print(error.toString());
                emit(NewsGetTechnologyErrorState(onError.toString()));
            });
        }else{
            emit(NewsGetTechnologySuccessState());
        }

    }

    bool isDark = false;
    void changeAppMode({bool? fromShared}){
        if(fromShared != null){
            isDark = fromShared;
        }else{
            isDark = !isDark;
            CacheHelper.putData(key: 'isDark', value: isDark).then((value) {
                emit(ChangeAppModeState());
            });
        }

    }
    bool isRight = false;
    void changeAppDirection(){
        isRight = !isRight;
        emit(ChangeAppDirectionState());
    }
    void callAllGets(){
        getBusiness();
        getScience();
        getTechnology();
    }

    List<dynamic> search = [];
    void getSearch(String value){
        emit(NewsGetSearchLoadingState());
        search = [];
        if(search.length == 0){
            DioHelper.getData(
                url: 'v2/everything',
                query: {
                    'q':'$value',
                    'apiKey' : 'e996ad2c79ff44db97ced88a53ea5a86',
                },
            ).then((value) {
                search = value.data['articles'];
                emit(NewsGetSearchSuccessState());
                print(business[0]['author']);
            }).catchError((error){
                print(error.toString());
                emit(NewsGetSearchErrorState(onError.toString()));
            });
        }
    }
}
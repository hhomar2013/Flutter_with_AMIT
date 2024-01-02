import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg/modules/newsapp/news_cubit.dart';
import 'package:mtg/modules/newsapp/news_status.dart';
import 'package:mtg/shared/components/components.dart';
class TechnologyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder:  (context, state) {
          var list  = NewsCubit.get(context).technology;
          return ConditionalBuilder(
              condition: state is! NewsGetTechnologyLoadingState,
              builder: (context) => articleBuilder(list: list,context: context),
              fallback: (context) => Center(
                child: CircularProgressIndicator(),
              )
          );
        }
    );;
  }
}

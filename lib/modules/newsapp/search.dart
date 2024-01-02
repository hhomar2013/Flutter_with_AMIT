import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg/modules/newsapp/news_cubit.dart';
import 'package:mtg/modules/newsapp/news_status.dart';
import 'package:mtg/shared/components/components.dart';
import 'package:mtg/shared/components/constant.dart';
class SearchScreen extends StatelessWidget {
  // const SearchScreen({super.key});
  bool searched_item = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: defaultTextField(
                      controller: searchController,
                      hintText: '',
                      type: TextInputType.text,
                      label: 'Search',
                      prefix: Icons.search,
                      onChange: (value){
                        searched_item = true;
                        NewsCubit.get(context).getSearch(value);

                      },validate: (String value){
                    if(value.isEmpty){
                      return 'Search must not by empty';
                    }
                    return null;
                  }
                  ),
                ),
                Expanded(child: articleBuilder(list: list,context: context ,searchItem: true)),
              ],

            ),
          );
      },

    );
  }
}

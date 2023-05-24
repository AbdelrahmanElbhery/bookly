import 'package:bookly/features/Search/presentation/views/widgets/search_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';
import 'custom_search_textfield.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Search Result',
            style: Styles.text18,
          ),
          SizedBox(
            height: 10,
          ),
           Expanded(child: CustomSearchListView())
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers.dart';
import '../../../../../core/styles.dart';
import 'custom_search_textfield.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
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

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: InkWell(
            child: Container(),
            onTap: () {
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            }),
      ),
      itemCount: 20,
    );
  }
}

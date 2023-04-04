import 'package:bookly/core/component.dart';
import 'package:flutter/material.dart';

import '../../../../book_details/presentation/views/book_details_view.dart';
import 'best_seller_items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: InkWell(
            child: const BestSellerItems(),
            onTap: () {
              navigate_to(context: context, widget: const BookDetailsView());
            }),
      ),
      itemCount: 20,
    );
  }
}

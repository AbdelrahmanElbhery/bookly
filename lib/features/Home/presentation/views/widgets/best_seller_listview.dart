import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers.dart';
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
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            }),
      ),
      itemCount: 20,
    );
  }
}

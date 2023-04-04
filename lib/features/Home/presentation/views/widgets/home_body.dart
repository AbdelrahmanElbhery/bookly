import 'package:auto_size_text/auto_size_text.dart';
import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_listview.dart';
import 'custom_appbar.dart';
import 'custom_listview.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: NestedScrollView(
          headerSliverBuilder: (context, boo) => [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomAppBar(),
                      SizedBox(
                        height: 25,
                      ),
                      CustomListView(),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0, bottom: 20),
                        child: AutoSizeText(
                          'Best Seller',
                          style: Styles.text18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
          body: const BestSellerListView()),
    );
  }
}

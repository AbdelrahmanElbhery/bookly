import 'package:bookly/core/styles.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/price_bar.dart';
import 'package:flutter/material.dart';

import 'also_like_listview.dart';
import 'book_details_image.dart';
import 'book_details_info.dart';
import 'custom_book_appbar.dart';

class BookBody extends StatelessWidget {
  const BookBody({Key? key, required this.bookmodel}) : super(key: key);
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookAppBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .034,
                ),
                BookDetailsImage(
                    imageurl:
                        bookmodel.volumeInfo!.imageLinks !=null ? bookmodel.volumeInfo!.imageLinks!.thumbnail : ''),
                BookDetailsInfo(
                  model: bookmodel,
                ),
                const SizedBox(
                  height: 30,
                ),
                PriceBar(bookmodel: bookmodel),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.text14.copyWith(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const AlsoLikeListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

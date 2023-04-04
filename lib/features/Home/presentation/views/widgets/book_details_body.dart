import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/also_like_image.dart';
import 'book_details_image.dart';
import 'book_details_info.dart';
import 'custom_book_appbar.dart';

class BookBody extends StatelessWidget {
  const BookBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookAppBar(),
          const BookDetailsImage(),
          const BookDetailsInfo(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .056,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'You can also like',
              style: Styles.text14.copyWith(fontWeight: FontWeight.w600),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .018,
          ),
          const AlsoLikeListView()
        ],
      ),
    );
  }
}

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
          child: AlsoLikeImage(),
        ),
        itemCount: 10,
      ),
    );
  }
}

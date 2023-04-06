import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({Key? key, required this.model}) : super(key: key);
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          model.volumeInfo!.title!,
          style: Styles.text30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          model.volumeInfo!.authors![0],
          style: Styles.text18.copyWith(
              fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.7)),
        ),
        const SizedBox(
          height: 14,
        ),
        Rating(
          mainAxisAlignment: MainAxisAlignment.center,
          avgrating: model.volumeInfo?.averageRating ?? 0,
          ratingcount: model.volumeInfo?.ratingsCount ?? 0,
        )
      ],
    );
  }
}

import 'package:bookly/features/Home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.text30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.text18.copyWith(
              fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.7)),
        ),
        const SizedBox(
          height: 14,
        ),
        const Rating(
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
    );
  }
}

import 'package:bookly/features/book_details/presentation/views/widgets/price_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/styles.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .045,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.text30,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .0045,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.text18.copyWith(
              fontWeight: FontWeight.w500, color: const Color(0xff707070)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .0155,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              size: 13,
              color: Color(0xffFFDD4F),
            ),
            const SizedBox(
              width: 6.3,
            ),
            const Text(
              '(4.8)',
              style: Styles.text16,
            ),
            const SizedBox(width: 5),
            Text(
              '(23455)',
              style: Styles.text14.copyWith(color: const Color(0xff707070)),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .041,
        ),
        const PriceBar(),
      ],
    );
  }
}

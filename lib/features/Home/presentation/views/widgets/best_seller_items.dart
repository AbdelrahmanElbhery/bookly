import 'package:auto_size_text/auto_size_text.dart';
import 'package:bookly/features/Home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';
import '../../../../../core/styles.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(
                          AssetsData.testImage,
                        ),
                        fit: BoxFit.fill)),
              ),
            )),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.text20.copyWith(fontFamily: 'GTSectraFine'),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Opacity(
                opacity: .7,
                child: Text('J.K. Rowling', style: Styles.text16),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    '19.99 ',
                    style: Styles.text20.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.euro,
                    size: 20,
                  ),
                  const Spacer(),
                  const Rating(),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

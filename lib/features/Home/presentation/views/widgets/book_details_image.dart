import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .31,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: const DecorationImage(
                      image: AssetImage(
                        AssetsData.testImage,
                      ),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
      ],
    );
  }
}

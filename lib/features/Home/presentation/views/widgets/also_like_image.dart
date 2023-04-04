import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';

class AlsoLikeImage extends StatelessWidget {
  const AlsoLikeImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}

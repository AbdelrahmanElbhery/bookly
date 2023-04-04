import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.1 / 3,
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

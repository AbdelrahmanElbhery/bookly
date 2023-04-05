import 'package:flutter/material.dart';

import 'also_like_image.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
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

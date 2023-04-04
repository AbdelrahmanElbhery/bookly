import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';

class PriceBar extends StatelessWidget {
  const PriceBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: LayoutBuilder(
        builder: (context, constraint) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .054,
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topLeft: Radius.circular(15))),
                  height: constraint.maxHeight,
                  width: constraint.maxWidth / 2,
                  alignment: Alignment.center,
                  child: Text(
                    '19.99€',
                    style: Styles.text18.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffEF8262),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  width: constraint.maxWidth / 2,
                  height: constraint.maxHeight,
                  child: Text(
                    'Free preview',
                    style: Styles.text16.copyWith(
                        fontWeight: FontWeight.bold, fontFamily: 'Gilroy'),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

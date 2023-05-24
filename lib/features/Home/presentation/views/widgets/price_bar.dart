import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/styles.dart';

class PriceBar extends StatelessWidget {
  const PriceBar({
    super.key,
    required this.bookmodel,
  });
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .054,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)))),
                  child: Text(
                    bookmodel.saleInfo?.listPrice?.amount.toString() != null
                        ? '${bookmodel.saleInfo?.listPrice?.amount.toString()} €'
                        : 'Free',
                    style: Styles.text18.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .054,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffEF8262),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)))),
                    child: Text(
                      'Free preview',
                      style: Styles.text16.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy',
                          color: Colors.white),
                    ),
                    onPressed: () async {
                      final Uri url =
                          Uri.parse(bookmodel.volumeInfo!.previewLink!);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    }),
              ),
            ),
          ],
        ));
  }
}

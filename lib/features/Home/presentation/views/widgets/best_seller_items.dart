import 'package:auto_size_text/auto_size_text.dart';
import 'package:bookly/core/assets.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({Key? key, required this.model}) : super(key: key);
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:  model.volumeInfo!.imageLinks !=null ? CachedNetworkImage(
                      imageUrl:model.volumeInfo!.imageLinks!.thumbnail! ,
                      fit: BoxFit.fill,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator())):Image.asset(AssetsData.logo)),
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
                  '${model.volumeInfo?.title}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.text20.copyWith(fontFamily: 'GTSectraFine'),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Opacity(
                opacity: .7,
                child: Text('${model.volumeInfo?.authors != null ?model.volumeInfo?.authors![0] : 'writer'}',
                    style: Styles.text16),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    '${model.saleInfo?.listPrice?.amount ?? 'Free'}',
                    style: Styles.text20.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.currency_pound,
                    size: 20,
                  ),
                  const Spacer(),
                  Rating(
                      avgrating: model.volumeInfo!.averageRating ?? 0,
                      ratingcount: model.volumeInfo!.ratingsCount ?? 0),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

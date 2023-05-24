import 'package:bookly/core/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({Key? key, required this.imageurl}) : super(key: key);
  final String ?imageurl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .32,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child:imageurl !='' ? CachedNetworkImage(
                  imageUrl: imageurl!,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator())):Image.asset(AssetsData.logo),
            ),
          ),
        ),
      ],
    );
  }
}

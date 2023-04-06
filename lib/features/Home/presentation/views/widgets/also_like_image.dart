import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlsoLikeImage extends StatelessWidget {
  const AlsoLikeImage({Key? key, required this.imageurl}) : super(key: key);
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          imageUrl: imageurl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

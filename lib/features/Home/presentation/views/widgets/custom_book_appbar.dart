import 'package:bookly/core/routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBookAppBar extends StatelessWidget {
  const CustomBookAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kHomescreen);
          },
          iconSize: 30,
          icon: const Icon(FontAwesomeIcons.xmark),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 25,
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}

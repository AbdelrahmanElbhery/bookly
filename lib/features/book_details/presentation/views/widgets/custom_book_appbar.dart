import 'package:bookly/core/component.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookAppBar extends StatelessWidget {
  const CustomBookAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 30),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              navigateandfinish(context: context, widget: const HomeScreen());
            },
            iconSize: 30,
            icon: const Icon(FontAwesomeIcons.xmark),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            iconSize: 25,
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}

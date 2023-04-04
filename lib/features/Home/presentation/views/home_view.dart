import 'package:bookly/features/Home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/media_query.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

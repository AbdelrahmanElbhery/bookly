import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants.dart';
import '../../../../Home/presentation/views/home_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideranimation;
  @override
  void initState() {
    super.initState();
    slidingAnimation();
    goToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
            animation: slideranimation,
            builder: (context, _) {
              return SlideTransition(
                position: slideranimation,
                child: const Text(
                  'Welcome to our app',
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }

  void slidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideranimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void goToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeScreen(),
        duration: kTranstionDuration,
        transition: Transition.fade,
      );
    });
  }
}

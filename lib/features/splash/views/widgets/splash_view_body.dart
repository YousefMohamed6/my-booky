import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/home_view.dart';
import 'package:bookly/features/splash/views/widgets/slider_text.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
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
        Image.asset(kAppLogo),
        const CustomSizedBox(height: 8),
        SliderText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0.0, 20.0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(() => const HomeView(),
            transition: Transition.fade, duration: kTransitonDuration);
      },
    );
  }
}

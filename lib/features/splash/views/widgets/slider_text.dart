import 'package:bookly/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SliderText extends StatelessWidget {
  const SliderText({super.key, required this.slidingAnimation});
  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const CustomText(
            text: 'Read Free Book',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

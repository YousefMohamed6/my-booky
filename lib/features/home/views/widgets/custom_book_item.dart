import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                ktestImage,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

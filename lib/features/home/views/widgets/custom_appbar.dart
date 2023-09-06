import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 24, left: 24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              kAppLogo,
              height: 16,
            ),
            CustomIconButton(
              icon: const Icon(Icons.search),
              iconSize: 32,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bookly/core/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BookAppBar extends StatelessWidget {
  const BookAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              icon: const Icon(Icons.close),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CustomIconButton(
              icon: const Icon(Icons.shopping_basket),
              iconSize: 32,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

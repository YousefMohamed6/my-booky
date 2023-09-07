import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        CustomSizedBox(width: 4),
        CustomText(
          text: '4.8',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        CustomSizedBox(width: 8),
        CustomText(
          text: '(2390)',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

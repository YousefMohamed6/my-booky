import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookData extends StatelessWidget {
  const BookData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomText(
          text: 'The Jungle Book',
          fontSize: 24,
        ),
        CustomText(
          text: 'Rudyard Kipling',
          fontSize: 18,
          color: Colors.white.withOpacity(0.5),
        ),
        const CustomSizedBox(height: 4),
        const Rating(),
      ],
    );
  }
}
import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/widgets/book_appbar.dart';
import 'package:bookly/features/home/views/widgets/custom_book_item.dart';
import 'package:bookly/features/home/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookAppBar(),
        const CustomSizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8,
          ),
          child: const CustomBookItem(),
        ),
        const BookData(),
      ],
    );
  }
}

class BookData extends StatelessWidget {
  const BookData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: 'The Jungle Book',
          fontSize: 32,
        ),
        CustomText(
          text: 'Rudyard Kipling',
          fontSize: 24,
        ),
        CustomSizedBox(height: 4),
        Rating(),
      ],
    );
  }
}

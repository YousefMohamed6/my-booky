import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/widgets/book_appbar.dart';
import 'package:bookly/features/home/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookAppBar(),
        const CustomSizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.17,
          ),
          child: const CustomBookItem(),
        ),
      ],
    );
  }
}

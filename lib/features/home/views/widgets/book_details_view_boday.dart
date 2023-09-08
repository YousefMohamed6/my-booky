import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/widgets/book_appbar.dart';
import 'package:bookly/features/home/views/widgets/book_data.dart';
import 'package:bookly/features/home/views/widgets/custom_book_button.dart';
import 'package:bookly/features/home/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8,
          ),
          child: const CustomBookItem(),
        ),
        const BookData(),
        const CustomSizedBox(height: 8),
        const CustomBookButtom(),
      ],
    );
  }
}


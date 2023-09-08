import 'package:bookly/features/home/views/widgets/book_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BookAppBar(),
      ],
    );
  }
}

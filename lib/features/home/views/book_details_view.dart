import 'package:bookly/features/home/views/widgets/book_details_view_boday.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static const String id = 'BookDetailsView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}

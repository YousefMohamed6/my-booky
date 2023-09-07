import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/features/home/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomListView(),
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: CustomText(
            text: 'Best Seller',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

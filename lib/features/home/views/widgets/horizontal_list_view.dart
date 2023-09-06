import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomListViewItem();
        },
      ),
    );
  }
}

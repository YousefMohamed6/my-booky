import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                ktestImage,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

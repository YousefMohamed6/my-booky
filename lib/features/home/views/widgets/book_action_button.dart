import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:flutter/material.dart';

class BookAcionButtom extends StatelessWidget {
  const BookAcionButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          minWidth: 150,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          color: Colors.white,
          onPressed: () {},
          child: const CustomText(
            text: r'19.19 $',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const CustomSizedBox(width: 1),
        MaterialButton(
          minWidth: 150,
          padding: const EdgeInsets.symmetric(vertical: 16),
          onPressed: () {},
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          color: Colors.red[300],
          child: const CustomText(
            text: 'Free PreView',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/core/widgets/vertical_sizebox.dart';
import 'package:bookly/features/home/views/book_details_view.dart';
import 'package:bookly/features/home/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, this.title, this.writer});
  final String? title;
  final String? writer;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsView.id);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSizedBox(
            height: 150,
            width: 130,
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
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
          ),
          const CustomSizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.6,
                  child: const CustomText(
                    text: 'Harry Potter and Globlet of Fire',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const CustomText(
                  text: 'Harry Potter ',
                  fontSize: 18,
                  color: Colors.grey,
                ),
                const Row(
                  children: [
                    CustomText(
                      text: r'19.9 $',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    Rating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

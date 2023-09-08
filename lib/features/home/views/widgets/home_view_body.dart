import 'package:bookly/core/widgets/custom_text.dart';
import 'package:bookly/features/home/views/widgets/best_seller_listview.dart';
import 'package:bookly/features/home/views/widgets/home_appbar.dart';
import 'package:bookly/features/home/views/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              FeatureListView(),
              Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 24),
                child: CustomText(
                  text: 'Best Seller',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}

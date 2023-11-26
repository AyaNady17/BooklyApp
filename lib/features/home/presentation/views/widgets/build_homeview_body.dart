import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestseller_listview.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/fearured_list_view.dart';
import 'package:flutter/material.dart';

class BuildHomeViewBody extends StatelessWidget {
  const BuildHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBar()),
        const SliverToBoxAdapter(child: FeaturedListView()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 35,
          ),
        ),
        SliverToBoxAdapter(child: bestSellerTitle()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        const BestSellerListView(),
      ],
    );
  }

  Padding bestSellerTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        "Best Seller",
        style: Styles.textStyle18,
      ),
    );
  }
}

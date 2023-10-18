import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/fearured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildHomeViewBody extends StatelessWidget {
  const BuildHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedListView(),
        const SizedBox(
          height: 50,
        ),
        bestSellerTitle(),
      ],
    );
  }

  Padding bestSellerTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        "Best Seller",
        style: Styles.MeduimTitle,
      ),
    );
  }
}

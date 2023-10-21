import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/fearured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildBookDetailsViewBody extends StatelessWidget {
  const BuildBookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DetailsViewAppBar(),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.55,
            child:
                const CustomBookImage(aspectRatio: 2.8 / 4, borderRadius: 24)),
      ],
    );
  }
}

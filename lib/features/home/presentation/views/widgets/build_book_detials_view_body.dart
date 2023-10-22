import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestseller_listview_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_description.dart';
import 'package:bookly/features/home/presentation/views/widgets/build_book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/fearured_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/suggested_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildBookDetailsViewBody extends StatelessWidget {
  const BuildBookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const DetailsViewAppBar(),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: const CustomBookImage(
                      aspectRatio: 2.8 / 4, borderRadius: 24)),
              const BookDescribtion(),
              BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const BookActions(),
              const Expanded(
                child: SizedBox(
                  height: 25,
                ),
              ),
              const SuggestedList(),
            ],
          ),
        )
      ],
    );
  }
}

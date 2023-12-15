import 'package:bookly/features/home/presentation/views/widgets/bestseller_listview_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_description.dart';
import 'package:bookly/features/home/presentation/views/widgets/build_book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';

import 'package:bookly/features/home/presentation/views/widgets/suggested_list.dart';
import 'package:flutter/material.dart';

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
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: const CustomBookImage(
                      bookImage:
                          'https://lumiere-a.akamaihd.net/v1/images/p_thejunglebook1967_19869_f10b5016.jpeg?region=0%2C0%2C540%2C810',
                      aspectRatio: 2.8 / 4,
                      borderRadius: 24)),
              const BookDescribtion(),
              BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
                rating: 0,
                ratingCount: 0,
              ),
              const SizedBox(
                height: 10,
              ),
              const BookActions(),
              const Expanded(
                child: SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.7,
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

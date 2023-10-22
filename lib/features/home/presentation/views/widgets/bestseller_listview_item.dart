import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/fearured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/DetailsView");
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 25,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 6,
            ),
            const SizedBox(
              height: 125,
              child: CustomBookImage(aspectRatio: 2.6 / 4, borderRadius: 10),
            ),
            const SizedBox(
              width: 25,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width * 0.65,
              height: 125,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Jungle Book is a American adventure",
                    style: Styles.textStyle20
                        .copyWith(fontFamily: "kGtSectraFine"),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Jon Favreau",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 \$ ",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  BookRating({super.key, required this.mainAxisAlignment});
  MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 4.5,
        ),
        Text(
          "(223)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}

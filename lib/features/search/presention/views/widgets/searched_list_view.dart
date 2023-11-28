import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchedListView extends StatelessWidget {
  const SearchedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return SearchedListViewItem();
    });
  }
}

class SearchedListViewItem extends StatelessWidget {
  const SearchedListViewItem({super.key});

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
              child: CustomBookImage(
                aspectRatio: 2.6 / 4,
                borderRadius: 10,
                bookImage:
                    'data:image/jpeg;base64,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',
              ),
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

// ignore: must_be_immutable
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

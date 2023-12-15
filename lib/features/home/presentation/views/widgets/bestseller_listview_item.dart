import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
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
            SizedBox(
              height: 125,
              child: CustomBookImage(
                aspectRatio: 2.6 / 4,
                borderRadius: 10,
                bookImage: bookModel.volumeInfo.imageLinks?.thumbnail ??
                    'https://www.stxnext.com/hs-fs/hubfs/STX%20Next%202020/blog/images/Python-Programming-for-Beginners-cover.jpg',
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
                    bookModel.volumeInfo.title ?? 'No Name',
                    style: Styles.textStyle20
                        .copyWith(fontFamily: "kGtSectraFine"),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free ",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.start,
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        ratingCount: bookModel.volumeInfo.ratingsCount ?? 0,
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
  BookRating(
      {super.key,
      required this.mainAxisAlignment,
      required this.rating,
      required this.ratingCount});
  MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int ratingCount;
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
        Text(
          rating.toString(),
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 4.5,
        ),
        Text(
          "($ratingCount)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}

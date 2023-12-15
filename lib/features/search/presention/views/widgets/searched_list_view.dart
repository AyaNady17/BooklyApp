import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view_modals/BestSellerBooksCubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchedListView extends StatelessWidget {
  const SearchedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
              itemCount: state.bestSellerBooks.length,
              itemBuilder: (context, index) {
                return SearchedListViewItem(
                  bookModel: state.bestSellerBooks[index],
                );
              });
        } else if (state is BestSellerBooksFailure) {
          return ErrorMessage(errorMessg: state.errMsg);
        } else {
          return const CustomCircularLoadingIndicator();
        }
      },
    );
  }
}

class SearchedListViewItem extends StatelessWidget {
  const SearchedListViewItem({super.key, required this.bookModel});
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
                bookImage: bookModel.volumeInfo.imageLinks.thumbnail,
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
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
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

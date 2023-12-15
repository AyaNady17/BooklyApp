import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/home/presentation/view_modals/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.featuredBooks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CustomBookImage(
                      bookImage: state.featuredBooks[index].volumeInfo
                          .imageLinks.smallThumbnail,
                      borderRadius: 18,
                      aspectRatio: 2.8 / 4,
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorMessage(
            errorMessg: state.errMsg,
          );
        } else {
          return const CustomCircularLoadingIndicator();
        }
      },
    );
  }
}

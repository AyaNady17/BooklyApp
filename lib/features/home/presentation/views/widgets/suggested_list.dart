import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class SuggestedList extends StatelessWidget {
  const SuggestedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You may also like",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 12,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 6,
        )
      ],
    );
  }
}

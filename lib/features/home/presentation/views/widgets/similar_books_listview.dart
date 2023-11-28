import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CustomBookImage(
                bookImage:
                    'blob:https://www.kobo.com/3bdf7a57-0022-4058-9af8-7ad486ea8d8f',
                borderRadius: 18,
                aspectRatio: 2.5 / 4,
              ),
            );
          }),
    );
  }
}

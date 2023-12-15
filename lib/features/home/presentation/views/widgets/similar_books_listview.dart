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
                    'https://lumiere-a.akamaihd.net/v1/images/p_thejunglebook1967_19869_f10b5016.jpeg?region=0%2C0%2C540%2C810',
                borderRadius: 18,
                aspectRatio: 2.5 / 4,
              ),
            );
          }),
    );
  }
}

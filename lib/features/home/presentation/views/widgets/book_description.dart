import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDescribtion extends StatelessWidget {
  const BookDescribtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 4),
          child: Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Jon Favreau",
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}

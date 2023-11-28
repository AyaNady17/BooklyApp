import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {super.key,
      required this.aspectRatio,
      required this.borderRadius,
      required this.bookImage});
  final double aspectRatio;
  final double borderRadius;
  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/DetailsView");
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              image: DecorationImage(image: NetworkImage(bookImage))),
        ),
      ),
    );
  }
}

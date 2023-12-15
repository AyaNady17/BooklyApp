import 'package:bookly/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: CachedNetworkImage(
              imageUrl: bookImage,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => Center(
                  child: LottieBuilder.asset(
                      "assets/images/loadingAnimation.json")),
            ),
          ),
        ),
      ),
    );
  }
}

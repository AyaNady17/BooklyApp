import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildBookDetailsViewBody extends StatelessWidget {
  const BuildBookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DetailsViewAppBar(),
      ],
    );
  }
}

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 55, bottom: 16),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                size: 24,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                size: 24,
              ))
        ],
      ),
    );
  }
}

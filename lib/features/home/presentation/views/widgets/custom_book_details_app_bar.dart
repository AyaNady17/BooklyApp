import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 55, bottom: 16),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                size: 26,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 26,
              ))
        ],
      ),
    );
  }
}

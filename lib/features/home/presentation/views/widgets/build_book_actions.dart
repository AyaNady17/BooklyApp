import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            BorderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.zero,
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.zero),
            textColor: Colors.black,
            BackgroundColor: Colors.white,
            text: '19.99\$',
          )),
          Expanded(
              child: CustomButton(
            BorderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.zero,
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.zero),
            textColor: Colors.white,
            BackgroundColor: Color(0xffEF8262),
            text: 'Free Preview',
          )),
        ],
      ),
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.BackgroundColor,
      required this.text,
      required this.BorderRadius,
      required this.textColor});
  final BackgroundColor;
  final text;
  final textColor;
  final BorderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          ),
          style: TextButton.styleFrom(
              backgroundColor: BackgroundColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius))),
    );
  }
}

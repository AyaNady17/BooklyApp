import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errorMessg});
  final String errorMessg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessg,
      style: Styles.textStyle16,
    );
  }
}

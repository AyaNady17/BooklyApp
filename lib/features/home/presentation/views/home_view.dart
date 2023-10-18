import 'package:bookly/features/home/presentation/views/widgets/build_homeview_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BuildHomeViewBody(),
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presention/views/widgets/custom_textfield.dart';
import 'package:bookly/features/search/presention/views/widgets/searched_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 20),
          child: CustomTextField(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, bottom: 12),
          child: Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(child: SearchedListView())
      ],
    );
  }
}

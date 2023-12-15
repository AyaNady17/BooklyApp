import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/home/presentation/view_modals/BestSellerBooksCubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestseller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: state.bestSellerBooks.length, (context, index) {
              return BestSellerListViewItem(
                bookModel: state.bestSellerBooks[index],
              );
            }),
          );
        } else if (state is BestSellerBooksFailure) {
          return SliverToBoxAdapter(
            child: ErrorMessage(
              errorMessg: state.errMsg,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
              child: CustomCircularLoadingIndicator());
        }
      },
    );
  }
}

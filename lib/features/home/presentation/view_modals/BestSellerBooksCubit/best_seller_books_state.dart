part of 'best_seller_books_cubit.dart';

sealed class BestSellerBooksState extends Equatable {
  const BestSellerBooksState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<dynamic> bestSellerBooks;
  const BestSellerBooksSuccess({required this.bestSellerBooks});
}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksFailure extends BestSellerBooksState {
  final String errMsg;
  const BestSellerBooksFailure({required this.errMsg});
}

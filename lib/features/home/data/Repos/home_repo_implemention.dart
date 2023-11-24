import 'package:bookly/core/errors/errors.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemetion implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}

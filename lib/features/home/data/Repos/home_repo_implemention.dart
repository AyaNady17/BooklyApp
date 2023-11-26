import 'package:bookly/core/errors/errors.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplemetion implements HomeRepo {
  ApiService apiService;
  HomeRepoImplemetion(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      String endpoint =
          "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest";
      var data = await apiService.get(endpoint: endpoint);
      List<BookModel> bestSellerBooks =
          data['items'].map((book) => BookModel.fromJson(book)).toList();

      return right(bestSellerBooks);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return (left(ServerFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      String endpoint = "volumes?Filtering=free-ebooks&q=subject:programming";
      var data = await apiService.get(endpoint: endpoint);
      List<BookModel> featuredBooks =
          data['items'].map((book) => BookModel.fromJson(book)).toList();

      return right(featuredBooks);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return (left(ServerFailure(e.toString())));
    }
  }
}

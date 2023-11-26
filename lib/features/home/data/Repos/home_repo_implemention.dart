import 'package:bookly/core/errors/errors.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplemetion implements HomeRepo {
  ApiService apiService;
  HomeRepoImplemetion(this.apiService);
  String endpoint =
      "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest";
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(endpoint: endpoint);
      List<BookModel> Books =
          data['items'].map((book) => BookModel.fromJson(book)).toList();

      return right(Books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return (left(ServerFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}

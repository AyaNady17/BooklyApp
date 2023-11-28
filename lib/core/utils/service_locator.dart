import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/Repos/home_repo_implemention.dart';
import 'package:bookly/features/home/presentation/view_modals/BestSellerBooksCubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_modals/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplemetion>(
      HomeRepoImplemetion(getIt.get<ApiService>()));
}

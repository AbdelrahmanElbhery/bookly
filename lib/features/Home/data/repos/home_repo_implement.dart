import 'package:bookly/core/dio.dart';
import 'package:bookly/core/errors.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<ServerFailure, List<BookModel>>> fitchNewestBooks() async {
    try {
      List<BookModel> bookmodels = [];
      var response = await Maindio.getdata(
          path:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Science');
      for (var item in response?.data['items']) {
        bookmodels.add(BookModel.fromJson(item));
      }
      return right(bookmodels);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<ServerFailure, List<BookModel>>> fitchFeaturedBooks() async {
    try {
      List<BookModel> bookmodels = [];
      var response = await Maindio.getdata(
          path: 'volumes?Filtering=free-ebooks&q=subject:Computers');
      for (var item in response?.data['items']) {
        bookmodels.add(BookModel.fromJson(item));
      }
      return right(bookmodels);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<ServerFailure, List<BookModel>>> fitchSimilarBooks() async {
    try {
      List<BookModel> bookmodels = [];
      var response = await Maindio.getdata(
          path:
              'volumes?Filtering=free-ebooks&q=subject:Computers&Sorting=relevance');
      for (var item in response?.data['items']) {
        bookmodels.add(BookModel.fromJson(item));
      }
      return right(bookmodels);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

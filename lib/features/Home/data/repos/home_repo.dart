import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, List<BookModel>>> fitchNewestBooks();
  Future<Either<ServerFailure, List<BookModel>>> fitchFeaturedBooks();
  Future<Either<ServerFailure, List<BookModel>>> fitchSimilarBooks();
  Future<Either<ServerFailure, List<BookModel>>> fitchSearchBooks(String searchtext);
}

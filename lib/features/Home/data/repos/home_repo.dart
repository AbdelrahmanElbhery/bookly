import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, List<BookModel>>> fitchBestSellerBooks();
  Future<Either<ServerFailure, List<BookModel>>> fitchFeaturedBooks();
}

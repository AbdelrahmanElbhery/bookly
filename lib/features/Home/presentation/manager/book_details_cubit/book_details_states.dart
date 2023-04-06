import '../../../data/models/book_model/book_model.dart';

abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> bookmodel;
  SimilarBooksSuccessState(this.bookmodel);
}

class SimilarBooksErrorState extends SimilarBooksState {
  final String error;
  SimilarBooksErrorState(this.error);
}

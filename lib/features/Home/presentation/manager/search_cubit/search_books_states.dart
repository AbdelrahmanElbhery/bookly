import '../../../data/models/book_model/book_model.dart';

abstract class SearchBooksState {}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksLoadingState extends SearchBooksState {}

class SearchBooksSuccessState extends SearchBooksState {
  final List<BookModel> bookmodel;
  SearchBooksSuccessState(this.bookmodel);
}

class SearchBooksErrorState extends SearchBooksState {
  final String error;
  SearchBooksErrorState(this.error);
}

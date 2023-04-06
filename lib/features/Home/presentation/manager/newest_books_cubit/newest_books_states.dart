import '../../../data/models/book_model/book_model.dart';

abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> bookmodel;
  NewestBooksSuccessState(this.bookmodel);
}

class NewestBooksErrorState extends NewestBooksState {
  final String error;
  NewestBooksErrorState(this.error);
}

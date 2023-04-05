import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> bookmodel;
  FeaturedBooksSuccessState(this.bookmodel);
}

class FeaturedBooksErrorState extends FeaturedBooksState {
  final String error;
  FeaturedBooksErrorState(this.error);
}

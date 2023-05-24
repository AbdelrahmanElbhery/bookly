import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_list_cubit/featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());
  final HomeRepo? homerepo;

  Future<void> getFeatureData() async {
    emit(FeaturedBooksLoadingState());
    var result = await homerepo?.fitchFeaturedBooks();
    result?.fold((failure) => emit(FeaturedBooksErrorState(failure.errMessage)),
        (success) => emit(FeaturedBooksSuccessState(success)));
  }
}

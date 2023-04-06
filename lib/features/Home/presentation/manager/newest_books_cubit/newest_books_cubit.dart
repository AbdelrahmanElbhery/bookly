import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homerepo) : super(NewestBooksInitial());
  final HomeRepo? homerepo;

  Future<void> getFeatureData() async {
    emit(NewestBooksLoadingState());
    var result = await homerepo?.fitchNewestBooks();
    result?.fold((failure) => emit(NewestBooksErrorState(failure.errMessage)),
        (success) => emit(NewestBooksSuccessState(success)));
  }
}

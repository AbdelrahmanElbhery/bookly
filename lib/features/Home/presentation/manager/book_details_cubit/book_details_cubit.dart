import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';

import 'book_details_states.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homerepo) : super(SimilarBooksInitial());
  final HomeRepo? homerepo;

  Future<void> getFeatureData() async {
    emit(SimilarBooksLoadingState());
    var result = await homerepo?.fitchSimilarBooks();
    print(result?.isLeft());
    result?.fold((failure) => emit(SimilarBooksErrorState(failure.errMessage)),
        (success) => emit(SimilarBooksSuccessState(success)));
  }
}

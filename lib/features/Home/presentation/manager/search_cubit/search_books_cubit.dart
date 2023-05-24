import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/manager/search_cubit/search_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homerepo) : super(SearchBooksInitial());
  final HomeRepo? homerepo;
  static SearchBooksCubit get(context) => BlocProvider.of(context);
  Future<void> getSearchData(String searchtext) async {
    emit(SearchBooksLoadingState());
    var result = await homerepo?.fitchSearchBooks(searchtext);
    result?.fold((failure) => emit(SearchBooksErrorState(failure.errMessage)),
        (success) => emit(SearchBooksSuccessState(success)));
  }
}

import 'package:bookly/features/Home/presentation/manager/search_cubit/search_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/search_cubit/search_books_states.dart';
import 'package:bookly/features/Home/presentation/views/widgets/best_seller_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBooksCubit,SearchBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if(state is SearchBooksSuccessState){
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: InkWell(
                  child: BestSellerItems(model: state.bookmodel[index]),
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView,
                        extra: state.bookmodel[index]);
                  }),
            ),
            itemCount: state.bookmodel.length,
          );
        }else if(state is SearchBooksErrorState){
          return Text(state.error);
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
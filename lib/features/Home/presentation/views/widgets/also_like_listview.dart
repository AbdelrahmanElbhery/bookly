import 'package:bookly/core/styles.dart';
import 'package:bookly/features/Home/presentation/manager/book_details_cubit/book_details_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/book_details_cubit/book_details_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers.dart';
import 'also_like_image.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (BuildContext context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12, bottom: 8),
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView,
                        extra: state.bookmodel[index]);
                  },
                  child: AlsoLikeImage(
                      imageurl: state.bookmodel[index].volumeInfo!.imageLinks!
                              .thumbnail ??
                          ''),
                ),
              ),
              itemCount: state.bookmodel.length,
            ),
          );
        } else if (state is SimilarBooksErrorState) {
          return Center(
            child: Text(
              state.error,
              style: Styles.text18,
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

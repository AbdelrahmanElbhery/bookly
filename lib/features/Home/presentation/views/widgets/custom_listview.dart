import 'package:bookly/core/styles.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_list_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_list_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers.dart';
import 'custom_listview_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .255,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.bookmodel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kBookDetailsView,
                              extra: state.bookmodel[index]);
                        },
                        child: CustomListViewItem(
                            imageurl: state.bookmodel[index].volumeInfo!
                                .imageLinks!.thumbnail!),
                      ),
                    )),
          );
        } else if (state is FeaturedBooksErrorState) {
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

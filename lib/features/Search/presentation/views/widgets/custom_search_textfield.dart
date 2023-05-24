import 'package:bookly/features/Home/presentation/manager/search_cubit/search_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/search_cubit/search_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBooksCubit,SearchBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        return TextField(
          onChanged: (text){
            SearchBooksCubit.get(context).getSearchData(text);
          },
          decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              )),
        );
      },
    );
  }
}

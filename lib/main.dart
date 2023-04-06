import 'package:bookly/constants.dart';
import 'package:bookly/core/dio.dart';
import 'package:bookly/core/routers.dart';
import 'package:bookly/features/Home/data/repos/home_repo_implement.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_list_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Maindio.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(HomeRepoImpl())..getFeatureData()),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(HomeRepoImpl())..getFeatureData())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}

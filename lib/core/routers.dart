import 'package:bookly/features/Home/presentation/views/book_details_view.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomescreen = '/homeScreen';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeScreen',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}

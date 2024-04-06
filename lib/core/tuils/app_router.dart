import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView='/homeView'; 
  static const kbookDetailsView ='/bookDetailsView'; 
  static const ksearchView ='/searchView'; 
  static final krouter = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kbookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
     GoRoute(
      path: ksearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}

import 'package:bookly/core/di/dependency_injection.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/routing/routes_names.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );

      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(
                getIt.get<HomeRepoImpl>(),
              )..fetchNewestBooks(),
            ),
          ], child: const HomeView()),
        );

      case Routes.bookDetailsView:
        if (args is BookModel) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(
                bookModel: args,
              ),
            ),
          );
        }

      case Routes.searchView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
            child: const SearchView(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

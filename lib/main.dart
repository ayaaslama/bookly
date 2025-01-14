import 'package:bookly/core/helpers/constants.dart';
import 'package:bookly/core/routing/app_router.dart';
import 'package:bookly/core/routing/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(BooklyApp(
    appRouter: AppRouter(),
  ));
}

class BooklyApp extends StatelessWidget {
  final AppRouter appRouter;

  const BooklyApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
            ),
            initialRoute: Routes.splashView,
            onGenerateRoute: appRouter.generateRoute,
          );
        });
  }
}

import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            verticalSpace(50),
            Text(
              'Best Sellers',
              style: AppTextStyles.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}

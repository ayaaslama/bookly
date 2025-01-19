import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              verticalSpace(15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  'Best Sellers',
                  style: AppTextStyles.textStyle18SemiBold,
                ),
              ),
              verticalSpace(15),
            ],
          ),
        ),
        BestSellerListView(),
      ],
    );
  }
}

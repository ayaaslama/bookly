import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/shared_widgets/book_image_conrainer.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                  child: BookImageContainer(),
                ),
                verticalSpace(40),
                Text(
                  'The Jungle Book',
                  style: AppTextStyles.textStyle30Normal
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                verticalSpace(6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: AppTextStyles.textStyle18SemiBold.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                verticalSpace(18),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                verticalSpace(37),
                BooksAction(),
                Expanded(child: verticalSpace(50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: AppTextStyles.textStyle14Normal.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                verticalSpace(16),
                SimilarBooksListView(),
                verticalSpace(40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

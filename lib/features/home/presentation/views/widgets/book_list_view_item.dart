import 'package:bookly/core/helpers/assets.dart';
import 'package:bookly/core/helpers/extentions.dart';
import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/shared_widgets/book_image_conrainer.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes_names.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.bookDetailsView);
      },
      child: SizedBox(
        height: 170.h,
        child: Row(
          children: [
            BookImageContainer(),
            horizontalSpace(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Philosopher\'s Stone',
                      maxLines: 2,
                      style: AppTextStyles.textStyle20Normal
                          .copyWith(fontFamily: AssetsData.kGtSectraFine),
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    'J.K. Rowling',
                    style: AppTextStyles.textStyle14Normal,
                  ),
                  verticalSpace(3),
                  Row(
                    children: [
                      Text(
                        '4.5 \$',
                        style: AppTextStyles.textStyle20Normal
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

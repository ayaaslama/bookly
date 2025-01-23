import 'package:bookly/core/helpers/assets.dart';
import 'package:bookly/core/helpers/extentions.dart';
import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/shared_widgets/book_image_conrainer.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_page_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes_names.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.bookDetailsView, arguments: bookModel);
      },
      child: SizedBox(
        height: 120.h,
        child: Row(
          children: [
            BookImageContainer(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
            ),
            horizontalSpace(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo?.title ?? '',
                      maxLines: 2,
                      style: AppTextStyles.textStyle20Normal
                          .copyWith(fontFamily: AssetsData.kGtSectraFine),
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    bookModel.volumeInfo?.authors?.first ?? '',
                    maxLines: 1,
                    style: AppTextStyles.textStyle14Normal,
                  ),
                  verticalSpace(3),
                  Row(
                    children: [
                      BookPageCount(
                        pageCount: bookModel.volumeInfo?.pageCount ?? 0,
                      ),
                      Spacer(),
                      Opacity(
                        opacity: 0.8,
                        child: Text(
                          bookModel.volumeInfo?.publishedDate ?? '',
                          style: AppTextStyles.textStyle14Normal
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
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

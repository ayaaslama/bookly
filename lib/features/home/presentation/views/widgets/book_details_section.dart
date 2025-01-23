import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/shared_widgets/book_image_conrainer.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_page_count.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: BookImageContainer(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        verticalSpace(40),
        Text(
          bookModel.volumeInfo?.title ?? '',
          style: AppTextStyles.textStyle30Normal
              .copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        verticalSpace(6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo?.authors?.first ?? '',
            style: AppTextStyles.textStyle18SemiBold.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        verticalSpace(18),
        BookPageCount(
          mainAxisAlignment: MainAxisAlignment.center,
          pageCount: bookModel.volumeInfo?.pageCount ?? 0,
        ),
        verticalSpace(37),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}

import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/shared_widgets/book_image_conrainer.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_page_count.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: BookImageContainer(
            imageUrl:
                'https://i0.wp.com/thepythoncodingbook.com/wp-content/uploads/2024/03/FRONT-for-ebook.jpg?resize=1200%2C1478&ssl=1',
          ),
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
        BookPageCount(
          mainAxisAlignment: MainAxisAlignment.center,
          pageCount: 200,
        ),
        verticalSpace(37),
        BooksAction(),
      ],
    );
  }
}

import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: AppTextStyles.textStyle14Normal.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        verticalSpace(16),
        SimilarBooksListView(
          bookModel: bookModel,
        ),
        verticalSpace(40),
      ],
    );
  }
}
